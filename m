Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B74A9965520
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 04:10:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72B6F42393;
	Fri, 30 Aug 2024 02:10:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JbhUqKtZfqSs; Fri, 30 Aug 2024 02:10:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 403644238F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724983857;
	bh=wxM5cSw8iRtPtPejRtHgtTY88vl5etw9hravbN4WUss=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LAzaOANZ9Z2QsunUhjqwKHvu1WP2eQvzGTCil9Vx9B7dpkgxapNnmS2KK42XJjRuW
	 hMiv17iV8jEKQtTyHYiruC1E3D7nJD6DOZ2LmiD7GQF6oJqpmTGhdYjBiCAauMLYWp
	 K83D1rFjHojxJ0la4NPh9eNyUhpOwnNZ8uoz5G73Pyr2liH/BRhjLkPNom4AJycRpt
	 60Et6opiewEubntbfRBSju26lcWfQFSanQX/FXK1yqPR985HXpIyZBUGoena5M7bQ/
	 mLiXeubwEOhYVzMYl0JzDgtQbJ7+hy5SRvGFQVinoBBDq0urwdb2UPOZnEA/4n+n4X
	 6vyxwoYFbG/WQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 403644238F;
	Fri, 30 Aug 2024 02:10:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D44C81BF344
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 02:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C0C0960DCA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 02:10:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rYGz9yWlRCnc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 02:10:54 +0000 (UTC)
X-Greylist: delayed 363 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 30 Aug 2024 02:10:53 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AA91D6062D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA91D6062D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.68.75;
 helo=ams.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA91D6062D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 02:10:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id C36C8AE2DE8;
 Fri, 30 Aug 2024 02:04:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 298E1C4CEC1;
 Fri, 30 Aug 2024 02:04:46 +0000 (UTC)
Date: Thu, 29 Aug 2024 19:04:45 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240829190445.7bb3a569@kernel.org>
In-Reply-To: <f67b0502e7e9e9e8452760c4d3ad7cdac648ecda.1724944117.git.pabeni@redhat.com>
References: <cover.1724944116.git.pabeni@redhat.com>
 <f67b0502e7e9e9e8452760c4d3ad7cdac648ecda.1724944117.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724983486;
 bh=3OJ2QWbxiooIsEPG7RBOyCZbWUQi+zRJda0w7NW7ix8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SVbOVo4HkZH0Kvb+RfQWlpGJ09XeZHrSYmH77L15jSyEHwsEdz1qZl0XuVeSPGt1L
 4rjIAVAuPre0rJZzZNK1bNC8NASgWxShkB1q5P2RQtvQE6EZ4zttdAfeXLtEvhJK0z
 9OmFp9tpuOQj2KhtIJDau8QKQwcEtL1aQz8+ZjdgYm8tOyWG32cIaMbVpY2np1U7RH
 z6yd+JqJ42gLfDPU1CQveMs1sGa47Dwhmi/YqMcVlsoFWtygCMsGMXQQEd+e2/9sT5
 78nyKtttMfX19APJGQnI+ehbYaUvrWa0GQ2BQ8zzMSBUqfnMSWBVfrhf+VjfoQ1udy
 nRHSgzhyoJjFQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SVbOVo4H
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 04/12] net-shapers:
 implement NL group operation
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 29 Aug 2024 17:16:57 +0200 Paolo Abeni wrote:
> Allow grouping multiple leaves shaper under the given root.
> The root and the leaves shapers are created, if needed, otherwise
> the existing shapers are re-linked as requested.
> 
> Try hard to pre-allocated the needed resources, to avoid non
> trivial H/W configuration rollbacks in case of any failure.

Need to s/root/parent/ the commit message?

> +static int __net_shaper_group(struct net_shaper_binding *binding,
> +			      int leaves_count,
> +			      const struct net_shaper_handle *leaves_handles,
> +			      struct net_shaper_info *leaves,
> +			      struct net_shaper_handle *node_handle,
> +			      struct net_shaper_info *node,
> +			      struct netlink_ext_ack *extack)
> +{
> +	const struct net_shaper_ops *ops = net_shaper_binding_ops(binding);
> +	struct net_shaper_info *parent = NULL;
> +	struct net_shaper_handle leaf_handle;
> +	int i, ret;
> +
> +	if (node_handle->scope == NET_SHAPER_SCOPE_NODE) {
> +		if (node_handle->id != NET_SHAPER_ID_UNSPEC &&
> +		    !net_shaper_cache_lookup(binding, node_handle)) {
> +			NL_SET_ERR_MSG_FMT(extack, "Node shaper %d:%d does not exists",
> +					   node_handle->scope, node_handle->id);

BAD_ATTR would do?

> +			return -ENOENT;
> +		}
> +
> +		/* When unspecified, the node parent scope is inherited from
> +		 * the leaves.
> +		 */
> +		if (node->parent.scope == NET_SHAPER_SCOPE_UNSPEC) {
> +			for (i = 1; i < leaves_count; ++i) {
> +				if (leaves[i].parent.scope !=
> +				    leaves[0].parent.scope ||
> +				    leaves[i].parent.id !=
> +				    leaves[0].parent.id) {

memcmp() ? put a BUILD_BUG_ON(sizeof() != 8) to make sure we double
check it if the struct grows?

> +					NL_SET_ERR_MSG_FMT(extack, "All the leaves shapers must have the same old parent");
> +					return -EINVAL;

5 indents is too many indents :( maybe make the for loop a helper?

> +				}
> +			}
> +
> +			if (leaves_count > 0)

how can we get here and not have leaves? :o

> +				node->parent = leaves[0].parent;
> +		}
> +
> +	} else {
> +		net_shaper_default_parent(node_handle, &node->parent);
> +	}

> +static int net_shaper_group_send_reply(struct genl_info *info,
> +				       struct net_shaper_handle *handle)
> +{
> +	struct net_shaper_binding *binding = info->user_ptr[0];
> +	struct sk_buff *msg;
> +	int ret = -EMSGSIZE;
> +	void *hdr;
> +
> +	/* Prepare the msg reply in advance, to avoid device operation
> +	 * rollback.
> +	 */
> +	msg = genlmsg_new(net_shaper_handle_size(), GFP_KERNEL);
> +	if (!msg)
> +		return ret;

return -ENOMEM;

> +
> +	hdr = genlmsg_iput(msg, info);
> +	if (!hdr)
> +		goto free_msg;
> +
> +	if (net_shaper_fill_binding(msg, binding, NET_SHAPER_A_IFINDEX))
> +		goto free_msg;
> +
> +	if (net_shaper_fill_handle(msg, handle, NET_SHAPER_A_HANDLE))

you can combine the two fill ifs into one with ||

> +		goto free_msg;
> +
> +	genlmsg_end(msg, hdr);
> +
> +	ret = genlmsg_reply(msg, info);
> +	if (ret)
> +		goto free_msg;

reply always eats the skb, just:

	return genlmsg_reply(msg, info);

> +
> +	return ret;
> +
> +free_msg:
> +	nlmsg_free(msg);
> +	return ret;

return -EMSGSIZE;

> +}
> +
> +int net_shaper_nl_group_doit(struct sk_buff *skb, struct genl_info *info)
> +{
> +	struct net_shaper_handle *leaves_handles, node_handle;
> +	struct net_shaper_info *leaves, node;
> +	struct net_shaper_binding *binding;
> +	int i, ret, rem, leaves_count;
> +	struct nlattr *attr;
> +
> +	if (GENL_REQ_ATTR_CHECK(info, NET_SHAPER_A_LEAVES) ||
> +	    GENL_REQ_ATTR_CHECK(info, NET_SHAPER_A_NODE))
> +		return -EINVAL;
> +
> +	binding = net_shaper_binding_from_ctx(info->user_ptr[0]);
> +	leaves_count = net_shaper_list_len(info, NET_SHAPER_A_LEAVES);
> +	leaves = kcalloc(leaves_count, sizeof(struct net_shaper_info) +
> +			 sizeof(struct net_shaper_handle), GFP_KERNEL);
> +	if (!leaves) {
> +		GENL_SET_ERR_MSG_FMT(info, "Can't allocate memory for %d leaves shapers",
> +				     leaves_count);
> +		return -ENOMEM;
> +	}
> +	leaves_handles = (struct net_shaper_handle *)&leaves[leaves_count];
> +
> +	ret = net_shaper_parse_node(binding, info->attrs[NET_SHAPER_A_NODE],
> +				    info, &node_handle, &node);
> +	if (ret)
> +		goto free_shapers;
> +
> +	i = 0;
> +	nla_for_each_attr_type(attr, NET_SHAPER_A_LEAVES,
> +			       genlmsg_data(info->genlhdr),
> +			       genlmsg_len(info->genlhdr), rem) {
> +		if (WARN_ON_ONCE(i >= leaves_count))
> +			goto free_shapers;
> +
> +		ret = net_shaper_parse_info_nest(binding, attr, info,
> +						 NET_SHAPER_SCOPE_QUEUE,
> +						 &leaves_handles[i],

Wouldn't it be convenient to store the handle in the "info" object?
AFAIU the handle is forever for an info, so no risk of it being out 
of sync...

> +						 &leaves[i]);
> +		if (ret)
> +			goto free_shapers;
> +		i++;
> +	}
> +
> +	ret = net_shaper_group(binding, leaves_count, leaves_handles, leaves,
> +			       &node_handle, &node, info->extack);

...and it'd be nice if group had 5 rather than 7 params

> +	if (ret < 0)
> +		goto free_shapers;
> +
> +	ret = net_shaper_group_send_reply(info, &node_handle);
> +	if (ret) {
> +		/* Error on reply is not fatal to avoid rollback a successful
> +		 * configuration.

Slight issues with the grammar here, but I think it should be fatal.
The sender will most likely block until they get a response.
Not to mention that the caller will not know what the handle 
we allocated is.

> +		 */
> +		GENL_SET_ERR_MSG_FMT(info, "Can't send reply %d", ret);
> +		ret = 0;
> +	}
> +
> +free_shapers:
> +	kfree(leaves);
> +	return ret;
> +}
