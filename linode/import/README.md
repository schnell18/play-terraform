# import existing linode resource into tf

    tf import linode_instance.inst <instance_id>

Where __<instance_id>__ can be retrieved by visting [linode web ui][1]
or by linode CLI:

    linode-cli linodes list

For more detailed instructions to install linode-cli, please refer to
[linode cli official document][2].

[1]: https://cloud.linode.com/linodes
[2]: https://www.linode.com/docs/guides/linode-cli/
