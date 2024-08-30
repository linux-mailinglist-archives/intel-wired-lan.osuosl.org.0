Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB329654AE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 03:26:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB48C41997;
	Fri, 30 Aug 2024 01:26:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FCQywx0XgWrC; Fri, 30 Aug 2024 01:26:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A91FC40881
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724981214;
	bh=D6pONStI0j2f2o3THcBpVvQgcj6KfVZgolIolfTAGIs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BULea/MAZ/6MXMqhSyTaWCA4j8VYKmLzRtBeQCrydQw0NBqiyETi7qh+DQmyytNoE
	 Lx5B4uNx63ZrlxzVP/L0pU6tTOr+FbsVGtPrDJcG+C19geU8dnvirPyt9/YGdnjBdh
	 InTyD/a4ZXxkjHn2Fzmo+dh1mU2drCFajcnoGdYkYj7EGpojClVSbR1JuOOKY773aX
	 McZZooWjkrkzPAzjOU041AdlQ1jBxVYTnv4qxfYG0D+AAacpLANn8+2ibaVdwJn4DY
	 zR/bjZ+WpnCTOCVXESLu0POkhEs5j439fY1mQRywKZzfBJQVrbuNrhG7oyCaFlqbc1
	 JrgZM3gjanKlw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A91FC40881;
	Fri, 30 Aug 2024 01:26:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82FFF1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 01:26:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6EDF960D79
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 01:26:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kwlceX3mu4LO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 01:26:50 +0000 (UTC)
X-Greylist: delayed 387 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 30 Aug 2024 01:26:50 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 64A52605DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64A52605DC
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 64A52605DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 01:26:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C3C19A404F0;
 Fri, 30 Aug 2024 01:20:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6E6BC4CEC1;
 Fri, 30 Aug 2024 01:20:20 +0000 (UTC)
Date: Thu, 29 Aug 2024 18:20:19 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240829182019.105962f6@kernel.org>
In-Reply-To: <53077d35a1183d5c1110076a07d73940bb2a55f3.1724944117.git.pabeni@redhat.com>
References: <cover.1724944116.git.pabeni@redhat.com>
 <53077d35a1183d5c1110076a07d73940bb2a55f3.1724944117.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724980821;
 bh=c+b4T/aHGsOzlEDZZkN6DoiXx2A9j5itydLLpXheobA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GpYfsFSbZoPuiaWMKRzJzfklmzv0lFpHz6olqaan+KFRHyiJp9t8X8FoMBH4lj9ZS
 qJ3xkBhB9ePurOljZOPnCjtfrvMtNyaa/2sXgUr6VVNfREM2KeYGryIwwIOirhyMGp
 L5qDb41TQso29dMi87IgTnXFemNof5t/+nbgYdnEXcje9ICrE89SNa5sz5lGTtKmxu
 6xaq7OPtQKmNZsVp6/2ds8Y3m7P7V0IvDs8njw+BWBtQ5jCkloYJFOL0pi0JNwDj/o
 z8uBrM+GNvZ4wrxZ/7vHvDlvqxb3icbEdg+bpan60AAQ4peqEMEtwCFkwq07v+jwsZ
 IEn+uSjcazD/A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GpYfsFSb
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 02/12] net-shapers:
 implement NL get operation
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

On Thu, 29 Aug 2024 17:16:55 +0200 Paolo Abeni wrote:
> +static int net_shaper_fill_handle(struct sk_buff *msg,
> +				  const struct net_shaper_handle *handle,
> +				  u32 type)
> +{
> +	struct nlattr *handle_attr;
> +
> +	if (handle->scope == NET_SHAPER_SCOPE_UNSPEC)
> +		return 0;
> +
> +	handle_attr = nla_nest_start_noflag(msg, type);

_noflag() is deprecated

> +	if (!handle_attr)
> +		return -EMSGSIZE;
> +
> +	if (nla_put_u32(msg, NET_SHAPER_A_HANDLE_SCOPE, handle->scope) ||
> +	    (handle->scope >= NET_SHAPER_SCOPE_QUEUE &&
> +	     nla_put_u32(msg, NET_SHAPER_A_HANDLE_ID, handle->id)))
> +		goto handle_nest_cancel;
> +
> +	nla_nest_end(msg, handle_attr);
> +	return 0;
> +
> +handle_nest_cancel:
> +	nla_nest_cancel(msg, handle_attr);
> +	return -EMSGSIZE;
> +}

> +/* Initialize the context fetching the relevant device and
> + * acquiring a reference to it.
> + */
> +static int net_shaper_ctx_init(const struct genl_info *info, int type,
> +			       struct net_shaper_nl_ctx *ctx)
> +{
> +	struct net *ns = genl_info_net(info);
> +	struct net_device *dev;
> +	int ifindex;
> +
> +	memset(ctx, 0, sizeof(*ctx));
> +	if (GENL_REQ_ATTR_CHECK(info, type))
> +		return -EINVAL;
> +
> +	ifindex = nla_get_u32(info->attrs[type]);

Let's limit the 'binding' thing to just driver call sites, we can
redo the rest easily later. This line and next pretends to take
"arbitrary" type but clearly wants a ifindex/netdev, right?

> +	dev = netdev_get_by_index(ns, ifindex, &ctx->dev_tracker, GFP_KERNEL);
> +	if (!dev) {
> +		NL_SET_BAD_ATTR(info->extack, info->attrs[type]);
> +		return -ENOENT;
> +	}

> +static int net_shaper_parse_handle(const struct nlattr *attr,
> +				   const struct genl_info *info,
> +				   struct net_shaper_handle *handle)
> +{
> +	struct nlattr *tb[NET_SHAPER_A_HANDLE_MAX + 1];
> +	struct nlattr *scope_attr, *id_attr;
> +	u32 id = 0;
> +	int ret;
> +
> +	ret = nla_parse_nested(tb, NET_SHAPER_A_HANDLE_MAX, attr,
> +			       net_shaper_handle_nl_policy, info->extack);
> +	if (ret < 0)
> +		return ret;
> +
> +	scope_attr = tb[NET_SHAPER_A_HANDLE_SCOPE];
> +	if (!scope_attr) {

NL_REQ_ATTR_CHECK()

> +		NL_SET_BAD_ATTR(info->extack,
> +				tb[NET_SHAPER_A_HANDLE_SCOPE]);
> +		return -EINVAL;
> +	}
> +
> +	handle->scope = nla_get_u32(scope_attr);
> +
> +	/* The default id for NODE scope shapers is an invalid one
> +	 * to help the 'group' operation discriminate between new
> +	 * NODE shaper creation (ID_UNSPEC) and reuse of existing
> +	 * shaper (any other value).
> +	 */
> +	id_attr = tb[NET_SHAPER_A_HANDLE_ID];
> +	if (id_attr)
> +		id = nla_get_u32(id_attr);
> +	else if (handle->scope == NET_SHAPER_SCOPE_NODE)
> +		id = NET_SHAPER_ID_UNSPEC;
> +
> +	handle->id = id;
> +	return 0;
> +}
> +
> +static int net_shaper_generic_pre(struct genl_info *info, int type)
> +{
> +	struct net_shaper_nl_ctx *ctx;
> +	int ret;
> +
> +	ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);

Maybe send a patch like this, to avoid having to allocate this space,
and special casing dump vs doit:

diff --git a/include/net/genetlink.h b/include/net/genetlink.h
index 9ab49bfeae78..7658f0885178 100644
--- a/include/net/genetlink.h
+++ b/include/net/genetlink.h
@@ -124,7 +124,8 @@ struct genl_family {
  * @genlhdr: generic netlink message header
  * @attrs: netlink attributes
  * @_net: network namespace
- * @user_ptr: user pointers
+ * @ctx: storage space for the use by the family
+ * @user_ptr: user pointers (deprecated, use ctx instead)
  * @extack: extended ACK report struct
  */
 struct genl_info {
@@ -135,7 +136,10 @@ struct genl_info {
 	struct genlmsghdr *	genlhdr;
 	struct nlattr **	attrs;
 	possible_net_t		_net;
-	void *			user_ptr[2];
+	union {
+		u8		ctx[48];
+		void *		user_ptr[2];
+	};
 	struct netlink_ext_ack *extack;
 };
 
diff --git a/net/netlink/genetlink.c b/net/netlink/genetlink.c
index feb54c63a116..29387b605f3e 100644
--- a/net/netlink/genetlink.c
+++ b/net/netlink/genetlink.c
@@ -997,7 +997,7 @@ static int genl_start(struct netlink_callback *cb)
 	info->info.attrs	= attrs;
 	genl_info_net_set(&info->info, sock_net(cb->skb->sk));
 	info->info.extack	= cb->extack;
-	memset(&info->info.user_ptr, 0, sizeof(info->info.user_ptr));
+	memset(&info->info.ctx, 0, sizeof(info->info.ctx));
 
 	cb->data = info;
 	if (ops->start) {
@@ -1104,7 +1104,7 @@ static int genl_family_rcv_msg_doit(const struct genl_family *family,
 	info.attrs = attrbuf;
 	info.extack = extack;
 	genl_info_net_set(&info, net);
-	memset(&info.user_ptr, 0, sizeof(info.user_ptr));
+	memset(&info.ctx, 0, sizeof(info.ctx));
 
 	if (ops->pre_doit) {
 		err = ops->pre_doit(ops, skb, &info);

> +	if (!ctx)
> +		return -ENOMEM;
> +
> +	ret = net_shaper_ctx_init(info, type, ctx);
> +	if (ret) {
> +		kfree(ctx);
> +		return ret;
> +	}
> +
> +	info->user_ptr[0] = ctx;
> +	return 0;
> +}
> +
>  int net_shaper_nl_get_doit(struct sk_buff *skb, struct genl_info *info)
>  {
> -	return -EOPNOTSUPP;
> +	struct net_shaper_binding *binding;
> +	struct net_shaper_handle handle;
> +	struct net_shaper_info *shaper;
> +	struct sk_buff *msg;
> +	int ret;
> +
> +	if (GENL_REQ_ATTR_CHECK(info, NET_SHAPER_A_HANDLE))
> +		return -EINVAL;
> +
> +	binding = net_shaper_binding_from_ctx(info->user_ptr[0]);

This 'binding' has the same meaning as 'binding' in TCP ZC? :(

> +	shaper = net_shaper_cache_lookup(binding, &handle);

Why call the stored info "cache"? It's the authoritative version of
user configuration, isn't it?

> +	if (!shaper) {
> +		NL_SET_BAD_ATTR(info->extack,
> +				info->attrs[NET_SHAPER_A_HANDLE]);
> +		return -ENOENT;
> +	}
> +
> +	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
> +	if (!msg)
> +		return -ENOMEM;
> +
> +	ret = net_shaper_fill_one(msg, binding, &handle, shaper, info);
> +	if (ret)
> +		goto free_msg;
> +
> +	ret =  genlmsg_reply(msg, info);

double space
