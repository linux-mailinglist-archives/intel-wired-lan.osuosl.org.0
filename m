Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44F15721A1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jul 2022 19:20:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A37140D82;
	Tue, 12 Jul 2022 17:20:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A37140D82
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657646447;
	bh=zmYRlV7HjpXg2rZxVLsHZyVAQeGc7Hk3DieYPnlk4QI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XzeLZJjXNsNJL9B0OVC9RSTPkrvmvGKmre9XK1nMHs6Buq+/nEHuHcO9rBr8Krwae
	 OmAmf/nlXhWpnj9G/efwqD1kSVabVxw5E9vuDhMr4eOrIZqmeh64pgnk72nFlk9shx
	 CAOhsEjRXvv0HCBSHRdLIrriXZV4rQBPhJ0I7nDQMTJ9c6jeJ12eLhrCsMY8TBz5vw
	 Vw3P08fTaJgIck3KkZAPauPmHM7L3m2WOFqWMvyhdGqd4puG8DV2cmYyXz3/OHn163
	 WL4ciuxhBYy43vHKAQPz0RcoX4M4FKMUDo2/xpZJRz95xLKWwTDQYuJtsNzDctzIDR
	 BFxewbpMD0+3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U9Mkf1hg6FeK; Tue, 12 Jul 2022 17:20:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 578C740D73;
	Tue, 12 Jul 2022 17:20:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 578C740D73
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0FA121BF575
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 17:20:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E911F40D73
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 17:20:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E911F40D73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Io1zVq1_6Ha for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jul 2022 17:20:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C52440184
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C52440184
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 17:20:39 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-118-GIF3WrCrMTyZQzn9QSbKAA-1; Tue, 12 Jul 2022 13:20:37 -0400
X-MC-Unique: GIF3WrCrMTyZQzn9QSbKAA-1
Received: by mail-wm1-f71.google.com with SMTP id
 c187-20020a1c35c4000000b003a19b3b9e6cso6959079wma.5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 10:20:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/bGlhR2C9Bbup3g3CXkgqiri2zsfVzF4PubM7oVkOco=;
 b=ViVoD07xu9IuAbJphHvNBHxHqooa1Fy0WhDa+Ju+rmPYzN93aZWoLvayG2VeLFxujA
 VzZBVuByAN9KI0PWwRcaiywM43FLA4M9FJrEbDM1ihQURtPRnDuq4ZxsfW21sgNUZ948
 +r0VX21cdxDwlABEkrPKSPUCNnhA4Hf6A2GG0ZD+10LgUN7mGwpBLixkD+zhVnJ8K2Jt
 RDxT+tFmyH8rYwIrRRtL9JiRryYRFBhV06puiPMkmUiAtEBS1RQkXCGq9boxV68y/6Ry
 j121xxGCPXRpfhlkwzj9iRdnsD8oFyZTrEebi0XUGvVq7UYfemf/wk1QH6h9nLOFh+cE
 UsFw==
X-Gm-Message-State: AJIora/2A/miPU//1jTy5SoaMJlI5BvO8OB0STczhmTDuCuWQqapXCGD
 IWkGGoqPRihUce3frH3rkFl1u2YpvItkVlCQGMdwddGdjaQWG2UWrd1B++e7ezZzTmjXdvKFKD5
 cVZ1Ix49d1taFYgQXkkxzLzdvuyxZ4Q==
X-Received: by 2002:a5d:40cc:0:b0:21d:68ce:4a71 with SMTP id
 b12-20020a5d40cc000000b0021d68ce4a71mr22431787wrq.195.1657646436320; 
 Tue, 12 Jul 2022 10:20:36 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1veC7eQiWcQZEt5/vXbhWczGvcEmYYjNL8gLbeWovr3kMYq72JfuaErbNpIzTWYHRRxn8V0Rw==
X-Received: by 2002:a5d:40cc:0:b0:21d:68ce:4a71 with SMTP id
 b12-20020a5d40cc000000b0021d68ce4a71mr22431743wrq.195.1657646436011; 
 Tue, 12 Jul 2022 10:20:36 -0700 (PDT)
Received: from localhost.localdomain ([185.233.130.50])
 by smtp.gmail.com with ESMTPSA id
 b18-20020a5d45d2000000b0021d7ff34df7sm10296317wrs.117.2022.07.12.10.20.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Jul 2022 10:20:34 -0700 (PDT)
Date: Tue, 12 Jul 2022 19:20:18 +0200
From: Guillaume Nault <gnault@redhat.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Message-ID: <20220712172018.GA3794@localhost.localdomain>
References: <20220708122421.19309-1-marcin.szycik@linux.intel.com>
 <20220708122421.19309-2-marcin.szycik@linux.intel.com>
 <20220708190528.GB3166@debian.home>
 <MW4PR11MB57767AD317D175D260362539FD879@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <MW4PR11MB57767AD317D175D260362539FD879@MW4PR11MB5776.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1657646438;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/bGlhR2C9Bbup3g3CXkgqiri2zsfVzF4PubM7oVkOco=;
 b=AZruPFQUkYz7IVp2luvPG5Sxqgrr2xu/bMRcazkCvvkTuwyUEDvAJSs2wn3TS0L8fDkAZT
 sp4VAI97ubUyQbLmAhlCyCXotulpOIeQ1Eu6sAXMrOt55P1nUpHLht99Zv2lCT2Y2mX1E2
 yCTMSMWypPBRU9bWLnkTH1UovGU4RmA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=AZruPFQU
X-Mailman-Original-Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=gnault@redhat.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v4 1/4] flow_dissector:
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

On Mon, Jul 11, 2022 at 10:23:50AM +0000, Drewek, Wojciech wrote:
> > > diff --git a/include/net/flow_dissector.h b/include/net/flow_dissector.h
> > > index a4c6057c7097..af0d429b9a26 100644
> > > --- a/include/net/flow_dissector.h
> > > +++ b/include/net/flow_dissector.h
> > > @@ -261,6 +261,18 @@ struct flow_dissector_key_num_of_vlans {
> > >  	u8 num_of_vlans;
> > >  };
> > >
> > > +/**
> > > + * struct flow_dissector_key_pppoe:
> > > + * @session_id: pppoe session id
> > > + * @ppp_proto: ppp protocol
> > > + * @type: pppoe eth type
> > > + */
> > > +struct flow_dissector_key_pppoe {
> > > +	__be16 session_id;
> > > +	__be16 ppp_proto;
> > > +	__be16 type;
> > 
> > I don't understand the need for the new 'type' field.
> 
> Let's say user want to add below filter with just protocol field:
> tc filter add dev ens6f0 ingress prio 1 protocol ppp_ses action drop
> 
> cls_flower would set basic.n_proto to ETH_P_PPP_SES, then PPPoE packet
> arrives with ppp_proto = PPP_IP, which means that in  __skb_flow_dissect basic.n_proto is going to
> be set to ETH_P_IP. We have a mismatch here cls_flower set basic.n_proto to ETH_P_PPP_SES and
> flow_dissector set it to ETH_P_IP. That's why in such example basic.n_proto has to be set to 0 (it works the same 
> with vlans) and key_pppoe::type has to be used. In other words basic.n_proto can't be used for storing
> ETH_P_PPP_SES because it will store encapsulated protocol.
> 
> We could also use it to match on ETH_P_PPP_DISC.

Thanks for the explanation. That makes sense.

> > > @@ -1214,26 +1250,60 @@ bool __skb_flow_dissect(const struct net *net,
> > >  			struct pppoe_hdr hdr;
> > >  			__be16 proto;
> > >  		} *hdr, _hdr;
> > > +		__be16 ppp_proto;
> > > +
> > >  		hdr = __skb_header_pointer(skb, nhoff, sizeof(_hdr), data, hlen, &_hdr);
> > >  		if (!hdr) {
> > >  			fdret = FLOW_DISSECT_RET_OUT_BAD;
> > >  			break;
> > >  		}
> > >
> > > -		nhoff += PPPOE_SES_HLEN;
> > > -		switch (hdr->proto) {
> > > -		case htons(PPP_IP):
> > > +		if (!is_pppoe_ses_hdr_valid(hdr->hdr)) {
> > > +			fdret = FLOW_DISSECT_RET_OUT_BAD;
> > > +			break;
> > > +		}
> > > +
> > > +		/* least significant bit of the first byte
> > > +		 * indicates if protocol field was compressed
> > > +		 */
> > > +		if (hdr->proto & 1) {
> > > +			ppp_proto = hdr->proto << 8;
> > 
> > This is little endian specific code. We can't make such assumptions.
> 
> Both ppp_proto and hdr->prot are stored in __be16 so left shift by 8 bits
> should always be ok, am I right?

Sorry, I don't understand. How could the test and the bit shift
operation give the correct result on a big endian machine?

Let's say we handle an IPv4 packet and the PPP protocol field isn't
compressed. That is, protocol is 0x0021.
On a big endian machine 'hdr->proto & 1' is true and the bit shift sets
ppp_proto to 0x2100, while the code should have left the original value
untouched.

> Should I use cpu_to_be16 on both 1 and 8. Is that what you mean?

I can't see how cpu_to_be16() could help here. I was thinking of simply
using ntohs(hdr->proto).

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
