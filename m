Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C183566EB5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 14:51:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD8494091C;
	Tue,  5 Jul 2022 12:51:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD8494091C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657025502;
	bh=PHGwohQuuFoulQ70pUsDXw+eFZ9qgr1/gMsNS+u1G5o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iZWG4iax40mnm3tyyJspPau45z5EsIl0twx09RxkMalUCk0tCtK7tuqvbLOueBobq
	 /hdqKu+gbUgStV8cz6QxVykeDVPuXeVQIUXlVvmYUlbUGNEyX9WkVwIX30vHjrDUor
	 0du5aCY0H7M33rUSC29XyJP5uBN3ffiO2bgccKMtyHxQMk/xhjxhZIXegF1zh/quKz
	 hHDvUDTvQ0UVOxALIN/QDUw1RsZDlAc8CT94yXZE3i/mDV/8zQwvlvUQ/nLoBzJwrv
	 F9BGk9e92m/cxg/fY0wulZVWshQpO5cmttO53YGPA4fCVPrj0zdksvtMiSofUKSSBE
	 B6X1G4Qsu+rXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xKbbh9NYbrMy; Tue,  5 Jul 2022 12:51:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AC544091A;
	Tue,  5 Jul 2022 12:51:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AC544091A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F88A1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 12:41:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1812260EAE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 12:41:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1812260EAE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oN7B1mW2FoMi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 12:41:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D23F660C0E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D23F660C0E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 12:41:41 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-152-XGq7iKv_MrWvfLRcpKAzlw-1; Fri, 01 Jul 2022 08:41:39 -0400
X-MC-Unique: XGq7iKv_MrWvfLRcpKAzlw-1
Received: by mail-wm1-f70.google.com with SMTP id
 bg6-20020a05600c3c8600b003a03d5d19e4so1372675wmb.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 01 Jul 2022 05:41:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=o3gY8Y5UYdPpN54/a6touCU5SVfDsdz3NaUMVHi2oAs=;
 b=BNCN6zduX4HGTp3Wj2e87ai8Y4Gy0adw+WxTmGklpWpZbe2SWIFYvwTtNv94A5kOSl
 6CpL1KbyK44fd0K2q1HVlhichjoJVm1H/Gb/ELS57AE5u4BZIO07SqWJvutJ8VClnw8J
 fFroPxTIPML0TxQuHjxRpelbuajcc4wjVhDwGYdaSFOZ6mvIfwY0fBF9H6i+WQwfSGMD
 F/In3TmyTR2Y4ONkkAdUaan2al4a1Ma978Shwqwq/uxXRvA3Wxg0DN6KKd5OeLxJiFET
 +b6ETxpY0VgknkfQU9/YsWWmcFM0ta9io06V5+8WwqVbYYeJJTNSB79clGqU+2w4ZVWL
 /UDg==
X-Gm-Message-State: AJIora8c68CdtBH6rcdSQX70t0IdmUZqMN11Yd6keJQ7qVYqcOMbeIok
 gvVudOPVWSJ7mFMa7aK7ktdQf7rTH3qb1wJr1oBB67AkywJslrDntGCna+k5HzcWT/r121HbRjB
 v9MIsoqwPYQjj0bVu7cx6DoqB39oMUQ==
X-Received: by 2002:a05:600c:154f:b0:3a0:54f9:4388 with SMTP id
 f15-20020a05600c154f00b003a054f94388mr15620874wmg.16.1656679297965; 
 Fri, 01 Jul 2022 05:41:37 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1vgdC8gWbOXAxOYoLXChRELY3YnmUdXS3/+2QWssNOB7zQ/plmFSx8GLyuo1tdTE9k0/w7+PQ==
X-Received: by 2002:a05:600c:154f:b0:3a0:54f9:4388 with SMTP id
 f15-20020a05600c154f00b003a054f94388mr15620780wmg.16.1656679297199; 
 Fri, 01 Jul 2022 05:41:37 -0700 (PDT)
Received: from debian.home
 (2a01cb058d1194004161f17a6a9ad508.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8d11:9400:4161:f17a:6a9a:d508])
 by smtp.gmail.com with ESMTPSA id
 x10-20020a5d54ca000000b0021b85664636sm21770332wrv.16.2022.07.01.05.41.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Jul 2022 05:41:35 -0700 (PDT)
Date: Fri, 1 Jul 2022 14:41:33 +0200
From: Guillaume Nault <gnault@redhat.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Message-ID: <20220701124133.GA10226@debian.home>
References: <20220629143859.209028-1-marcin.szycik@linux.intel.com>
 <20220629143859.209028-2-marcin.szycik@linux.intel.com>
 <20220630231016.GA392@debian.home>
 <MW4PR11MB5776F1388A0EFB83990120CDFDBD9@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <MW4PR11MB5776F1388A0EFB83990120CDFDBD9@MW4PR11MB5776.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Approved-At: Tue, 05 Jul 2022 12:51:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1656679300;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=o3gY8Y5UYdPpN54/a6touCU5SVfDsdz3NaUMVHi2oAs=;
 b=JCNB1mbapCDJqR/xwsBZwtw39l1cqo4Xi9QGVuNgiWS/zxFDAxeJcS6Tm/4/8MA4am4WzL
 5I9IOBgCjFmCKoTGJ0YMnsDhWeIX8czZXuZeiglIHcoI/e2Y8BN1aWeAme+lV7T9Sc+36n
 RVFHGqGCaBeiVgpVdumlDbzf5GCJwoo=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JCNB1mba
X-Mailman-Original-Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=gnault@redhat.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v3 1/4] flow_dissector:
 Add PPPoE dissectors
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "paulb@nvidia.com" <paulb@nvidia.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "boris.sukholitko@broadcom.com" <boris.sukholitko@broadcom.com>,
 "paulus@samba.org" <paulus@samba.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "zhangkaiheb@126.com" <zhangkaiheb@126.com>,
 "pablo@netfilter.org" <pablo@netfilter.org>,
 "baowen.zheng@corigine.com" <baowen.zheng@corigine.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "komachi.yoshiki@gmail.com" <komachi.yoshiki@gmail.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "mostrows@earthlink.net" <mostrows@earthlink.net>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 01, 2022 at 10:53:51AM +0000, Drewek, Wojciech wrote:
> > > +/**
> > > + * struct flow_dissector_key_pppoe:
> > > + * @session_id: pppoe session id
> > > + * @ppp_proto: ppp protocol
> > > + */
> > > +struct flow_dissector_key_pppoe {
> > > +	u16 session_id;
> > > +	__be16 ppp_proto;
> > > +};
> > 
> > Why isn't session_id __be16 too?
> 
> I've got general impression that storing protocols values
> in big endian is a standard through out the code and other values like vlan_id
> don't have to be stored in big endian, but maybe it's just my illusion :)
> I can change that in v3.

I don't know of any written rule, but looking at other keys, every
protocol field is stored with the endianess used on the wire. Only
metadata are stored in host byte order. For flow_dissector_key_vlan,
vlan_id is a bit special since it's only 12 bits long, but other vlan
fields are stored in big endian (vlan_tci is __be16 for example). And
vlan ids are special for another reason too: they're also metadata
stored in skbuffs because of vlan hardware offload.

But PPPoE Session Id is clearly read from the packet header, where it's
stored in network byte order.

> > Also, I'm not sure I like mixing the PPPoE session ID and PPP protocol
> > fields in the same structure: they're part of two different protocols.
> > However, I can't anticipate any technical problem in doing so, and I
> > guess there's no easy way to let the flow dissector parse the PPP
> > header independently. So well, maybe we don't have choice...
> 
> We are not planning to match on other fields from PPP protocol so
> separate structure just for it is not needed I guess.

FTR, I believe it's okay to take this shortcut but for different
reasons:

 * When transported over PPPoE, PPP frames are not supposed to have
   address and control fields. Therefore, in this case, the PPP header
   is limitted to the protocol field, so the dissector key would never
   have to be extended.

 * It's unlikely enough that we'd ever have any other protocol
   transporting PPP frames to implement in the flow dissector.
   Therefore, independent PPP dissection code probably won't be needed
   (even if one wants to add support for L2TP or PPTP in the flow
   dissector, that probably should be done with tunnel metadata, like
   VXLAN).

 * We have gotos for jumping to "network" or "transport" header dissection
   (proto_again and ip_proto_again), but no place to restart at the "link"
   header and no way to tell what type of link layer header we're
   requesting to parse (Ethernet or PPP).

For all these reasons, I believe your approach is an acceptable
shortcut. But I don't buy the "let's limit the flow dissector to what
we plan to support in ice" argument.

> > > @@ -1221,19 +1254,29 @@ bool __skb_flow_dissect(const struct net *net,
> > >  		}
> > >
> > >  		nhoff += PPPOE_SES_HLEN;
> > > -		switch (hdr->proto) {
> > > -		case htons(PPP_IP):
> > > +		if (hdr->proto == htons(PPP_IP)) {
> > >  			proto = htons(ETH_P_IP);
> > >  			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
> > > -			break;
> > > -		case htons(PPP_IPV6):
> > > +		} else if (hdr->proto == htons(PPP_IPV6)) {
> > >  			proto = htons(ETH_P_IPV6);
> > >  			fdret = FLOW_DISSECT_RET_PROTO_AGAIN;
> > > -			break;
> > 
> > 1)
> > Looks like you could easily handle MPLS too. Did you skip it on
> > purpose? (not enough users to justify writing and maintaining
> > the code?).
> > 
> > I don't mean MPLS has to be supported; I'd just like to know if it was
> > considered.
> 
> Yes, exactly as you write, not enough users, but I can see thet MPLS should
> be easy to implement so I'll include it in the next version.

Okay.

> > 2)
> > Also this whole test is a bit weak: the version, type and code fields
> > must have precise values for the PPPoE Session packet to be valid.
> > If either version or type is different than 1, then the packet
> > advertises a new version of the protocol that we don't know how to parse
> > (or most probably the packet was forged or corrupted). A non-zero code
> > is also invalid.
> > 
> > I know the code was already like this before your patch, but it's
> > probably better to fix it before implementing hardware offload.
> 
> Sure, I'll add packet validation in next version.

Great!

> > 3)
> > Finally, the PPP protocol could be compressed and stored in 1 byte
> > instead of 2. This case wasn't handled before your patch, but I think
> > that should be fixed too before implementing hardware offload.
> 
> We faced that issue but we couldn't find out what indicates
> when ppp protocol is stored in 1 byte instead of 2.

That depends on the least significant bit of the first byte. If it's 0
then the next byte is also part of the protocol field. If it's one,
the protocol is "compressed" (that is the high order 0x00 byte has been
stripped and we're left with only the least significant byte).

This is explained more formally in RFC 1661 section 2 (PPP Encapsulation):
  https://datatracker.ietf.org/doc/html/rfc1661#section-2

and section 6.5 (Protocol-Field-Compression (PFC)):
  https://datatracker.ietf.org/doc/html/rfc1661#section-6.5

There should be no reason to use this old PPP feature with PPPoE, but
it's still valid (even though it breaks IP header alignment).

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
