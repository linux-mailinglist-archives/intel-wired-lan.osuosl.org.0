Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8554F96690A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 20:39:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF3EF42431;
	Fri, 30 Aug 2024 18:39:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id erZnYTbngnOS; Fri, 30 Aug 2024 18:39:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A289141D1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725043147;
	bh=jtsgDyqVl0yUPYvBjw4XZ4SaZ2LL+rCWC0PuzajxnJ8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YBzrlLh15JeQm6j+WsfFDihppVg/2FZt6BKFHV/vY7sq3xp48/vup0urzGZODN+7u
	 3/sD8e1EI6KEBOHafycWNWCG3LOSMvMCzw5Tnpbzm/Oxj95SDwEXpr41PWC3PVWdgB
	 VraIeWGNfUrJME5J5CWNbHp1IQAfwTdqRT6zZo5ibE4DNw51tt2XRn1GgWuPneAIqH
	 OuK0+CYlbygAyVcXF0p8iLXxTlZFLeLGNq4Knp6i4ukqcuIEJuhe+cwLIaY82hwOFQ
	 PioKt8/5/v5/jgqwub1lkyEcQR6+pcP2qu6bFK3bRJUax0EFR/Q6c8LOXJds+G2/OV
	 mNi1XRbIdStWQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A289141D1A;
	Fri, 30 Aug 2024 18:39:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 066611BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 18:39:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E756A84565
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 18:39:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o8biTm3OrBo9 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 18:39:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DA8E88415E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA8E88415E
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA8E88415E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 18:39:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id A6995A44C77;
 Fri, 30 Aug 2024 18:38:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBEF7C4CEC2;
 Fri, 30 Aug 2024 18:39:01 +0000 (UTC)
Date: Fri, 30 Aug 2024 11:39:00 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240830113900.4c5c9b2a@kernel.org>
In-Reply-To: <57ef8eb8-9534-4061-ba6c-4dadaf790c45@redhat.com>
References: <cover.1724944116.git.pabeni@redhat.com>
 <53077d35a1183d5c1110076a07d73940bb2a55f3.1724944117.git.pabeni@redhat.com>
 <20240829182019.105962f6@kernel.org>
 <57ef8eb8-9534-4061-ba6c-4dadaf790c45@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725043142;
 bh=+FNB0A+ZfQZEONkif8a4AtC96GYJQ09mwFqBFIdEIWY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ji35NO57+040w7GP2YXQX+rUOiqmpm80A/Ht3wvP+Np6VPf7KuaDeplS68Z6kMxa3
 cDdj/+epX8sFvJQZ1kz6f7olm/WH9zwyw0BZLgW48/8esk609HZaFiVi6omvKEPQlL
 YJPLCcGNHrrt3q4Y0mpK46MQgp25b2K5Y8f/5ZpgyZJTfC6G5RCNSOVcSinRF6Pi9C
 1ioO0/b+9F7IXvusRmy4lyKjSl2qyga5DsI1kPZlcBquR/jUOqETOagygzMAncY1br
 H8SSmNnmc0FGTg3MMJpjhMW+50Naay9Sx+I7SCj8TZUzmoozsomL3y12Gx3iSPSuS0
 1qcrHa/FeZ5uA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ji35NO57
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

On Fri, 30 Aug 2024 12:55:05 +0200 Paolo Abeni wrote:
> On 8/30/24 03:20, Jakub Kicinski wrote:>> +/* Initialize the context 
> fetching the relevant device and
> >> + * acquiring a reference to it.
> >> + */
> >> +static int net_shaper_ctx_init(const struct genl_info *info, int type,
> >> +			       struct net_shaper_nl_ctx *ctx)
> >> +{
> >> +	struct net *ns = genl_info_net(info);
> >> +	struct net_device *dev;
> >> +	int ifindex;
> >> +
> >> +	memset(ctx, 0, sizeof(*ctx));
> >> +	if (GENL_REQ_ATTR_CHECK(info, type))
> >> +		return -EINVAL;
> >> +
> >> +	ifindex = nla_get_u32(info->attrs[type]);  
> > 
> > Let's limit the 'binding' thing to just driver call sites, we can
> > redo the rest easily later. This line and next pretends to take
> > "arbitrary" type but clearly wants a ifindex/netdev, right?  
> 
> There is a misunderstanding. This helper will be used in a following 
> patch (7/12) with a different 'type' argument: 
> NET_SHAPER_A_BINDING_IFINDEX. I've put a note in the commit message, but 
> was unintentionally dropped in one of the recent refactors. I'll add 
> that note back.

What I'm saying is that if you want to prep the ground for more
"binding" types you should also add:

	if (type != ...IFINDEX) {
		/* other binding types are TBD */
		return -EINVAL;
	}

> I hope you are ok with the struct net_shaper_binding * argument to most 
> helpers? does not add complexity, will help to support devlink objects 
> and swapping back and forth from/to struct net_device* can't be automated.

I am "okay" in the American sense of the word which AFAIU is "unhappy
but won't complain unless asked".

> > Maybe send a patch like this, to avoid having to allocate this space,
> > and special casing dump vs doit:
> > 
> > diff --git a/include/net/genetlink.h b/include/net/genetlink.h
> > index 9ab49bfeae78..7658f0885178 100644
> > --- a/include/net/genetlink.h
> > +++ b/include/net/genetlink.h
> > @@ -124,7 +124,8 @@ struct genl_family {
> >    * @genlhdr: generic netlink message header
> >    * @attrs: netlink attributes
> >    * @_net: network namespace
> > - * @user_ptr: user pointers
> > + * @ctx: storage space for the use by the family
> > + * @user_ptr: user pointers (deprecated, use ctx instead)
> >    * @extack: extended ACK report struct
> >    */
> >   struct genl_info {
> > @@ -135,7 +136,10 @@ struct genl_info {
> >   	struct genlmsghdr *	genlhdr;
> >   	struct nlattr **	attrs;
> >   	possible_net_t		_net;
> > -	void *			user_ptr[2];
> > +	union {
> > +		u8		ctx[48];
> > +		void *		user_ptr[2];
> > +	};
> >   	struct netlink_ext_ack *extack;
> >   };  
> 
> Makes sense. Plus likely:
> 
> #define NETLINK_CTX_SIZE 48
> 
> and use such define above and in linux/netlink.h

Aha, would be good to also have a checking macro. Maybe rename

NL_ASSERT_DUMP_CTX_FITS()

to apply more broadly? or add a new one? Weak preference for former.
