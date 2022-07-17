Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B9B5775E0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 Jul 2022 13:15:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4F9F81449;
	Sun, 17 Jul 2022 11:15:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4F9F81449
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658056543;
	bh=47N7/i9cXYzK+WeKdRi+KimkUiwDcbHMMp3qOuBs4eg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U2oHkuySYf/5mP3m+ZiNaaTE/HE3KzZ6mILeQPqF3b6sZxqZx0Kodfps9FN8frTT5
	 EXFVsPePVKQ+dxka4VA6eTzscsWdEnpPPE4sHvu+9jKJq8OmNmuSntCbh1Ov6CxjTS
	 Jd5oc6C80722NmD9+AwdqMj9DW0H8+9yWumztfmS1OwW9MLKxn2fIpz3Lv2PQyooIo
	 u4UDTVcB3WURj9JnljksT6MOUEj3P0pOY9SPoMINc/ZwPtSOtI299FDhGTaRpw4YZM
	 gEzI1zzrxLynnYWzhjc9eYjaKF9EeLRJbB2xkxuc5/AQNdrUNxF1+cvwJVP6igmKkJ
	 9sB2lM9z3xNTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U72b0965DgbW; Sun, 17 Jul 2022 11:15:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B372081425;
	Sun, 17 Jul 2022 11:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B372081425
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF34A1BF299
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jul 2022 11:15:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A83A64013E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jul 2022 11:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A83A64013E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MbZjaqWRz9NF for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Jul 2022 11:15:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8ECC340190
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8ECC340190
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jul 2022 11:15:36 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-339-Pdh5MFtCO_ylxG66jzGVrg-1; Sun, 17 Jul 2022 07:15:33 -0400
X-MC-Unique: Pdh5MFtCO_ylxG66jzGVrg-1
Received: by mail-wm1-f70.google.com with SMTP id
 h189-20020a1c21c6000000b003a2fdf9bd2aso4201259wmh.8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Jul 2022 04:15:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=c9j88y9s6Hkg8UgciFOzJU9nfQvd1FfPp989+Uo9r2M=;
 b=GMtxzM3utEuDdOJKWS7FYTustMx9eqKqFC+tqvZNtmpAt34PJ6Nj71Mupz/ZL6pc5g
 7Tqk5JkqxBFKx63AkM7X94nxaondFvunolYTyp0+i6Q0IPXXJ5oi50AT5RF4JZrptC1s
 +DzAlFL/4z9K7F6KU8UqT4KEaqstwVols6Vcv+TY3ASLABmQ8oRquQ0uiz7kFJLYEOBw
 egHBLcRjiOtSi9xX2voCIfuy/oJt0XLXvEGx3Gp1XlhPw1srKOvhzmQuzQm3yVHxszbu
 45RMDomO6I1VMMtt2K/WtNZE6zua7GN4Ff7H+j63YrrsoBohs/ILwtZuEddaZtzLBYPO
 hwTQ==
X-Gm-Message-State: AJIora9OCc6jDuHsQvVPwJIjPrKtT6pGVr6IoGhO7m0C66WbLmwtihRw
 BEtLx2aSPbm/ufH/k8XR+RQEE2sF3NRu7Zt08SY/mhZbsHfevzVxkKBjv/+M50WktJ1zpQ6X2nD
 KhNPbN5cg3rJK77oeiRR2dYZEX4jUpg==
X-Received: by 2002:a05:600c:6012:b0:3a3:1b6c:f308 with SMTP id
 az18-20020a05600c601200b003a31b6cf308mr299257wmb.91.1658056532653; 
 Sun, 17 Jul 2022 04:15:32 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1uGpGXedM2PCLHQ7X12Al7EQkZHSC3hNbJVLlpSEPCwdukFoGVzUkp40agh9RpJKms1cpEWDg==
X-Received: by 2002:a05:600c:6012:b0:3a3:1b6c:f308 with SMTP id
 az18-20020a05600c601200b003a31b6cf308mr299227wmb.91.1658056532364; 
 Sun, 17 Jul 2022 04:15:32 -0700 (PDT)
Received: from localhost.localdomain ([185.233.130.50])
 by smtp.gmail.com with ESMTPSA id
 a10-20020adfe5ca000000b0021d77625d90sm8133671wrn.79.2022.07.17.04.15.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Jul 2022 04:15:31 -0700 (PDT)
Date: Sun, 17 Jul 2022 13:15:23 +0200
From: Guillaume Nault <gnault@redhat.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Message-ID: <20220717111523.GA3118@localhost.localdomain>
References: <20220708122421.19309-1-marcin.szycik@linux.intel.com>
 <20220708122421.19309-2-marcin.szycik@linux.intel.com>
 <20220708190528.GB3166@debian.home>
 <MW4PR11MB57767AD317D175D260362539FD879@MW4PR11MB5776.namprd11.prod.outlook.com>
 <20220712172018.GA3794@localhost.localdomain>
 <MW4PR11MB577640BD1BAC97D3BB27A339FD899@MW4PR11MB5776.namprd11.prod.outlook.com>
 <MW4PR11MB57763D9CD8EA3F31DB7E3E19FD899@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <MW4PR11MB57763D9CD8EA3F31DB7E3E19FD899@MW4PR11MB5776.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1658056535;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=c9j88y9s6Hkg8UgciFOzJU9nfQvd1FfPp989+Uo9r2M=;
 b=f0mHIilQIeJ5wM1tNxftFxwETl9R6iz2rV6EFpcENxoRvEqCQeQPgSSnRlG4RYG6o8QI5T
 g5Tpbuz8sDxVOHTgUmfaow5hxYVut8tFW7HNQqlry9FSZiMNXrAj7jXki5tpiaoZX2rlTH
 hGuiZ1lJshbZwTGT7l9nfkMTYDw36B8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=f0mHIilQ
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

On Wed, Jul 13, 2022 at 01:54:35PM +0000, Drewek, Wojciech wrote:
> I think this should work with both LE and BE arch, what do you think Guillaume?
> We don't want to spam so much with next versions so maybe it is better
> to ask earlier.
> 
> 	u16 ppp_proto;
> 
> 	ppp_proto = ntohs(hdr->proto);
> 	if (ppp_proto & 256) {
> 		ppp_proto = htons(ppp_proto >> 8);
> 		nhoff += PPPOE_SES_HLEN - 1;
> 	} else {
> 		ppp_proto = htons(ppp_proto);
> 		nhoff += PPPOE_SES_HLEN;
> 	}

Sorry for responding late. I was away this week (and will be next week
too) and have very sporadic (and slow) Internet connection and limitted
time for review. I saw you've sent a v5 with this code, I'll reply
there. Thanks for being so patient.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
