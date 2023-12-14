Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05084813B85
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 21:30:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A661940480;
	Thu, 14 Dec 2023 20:30:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A661940480
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702585805;
	bh=Ny6/PJUbLewhK+mYsJu07pM1zJ+33cQbAT/CSaZK/8s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=69PvJys/Hd0BLCLX9qeCobRns+TFZtQA8YXc6WPb9s8I6KzazoHHwmvFjOAQlTPY9
	 nUjJ8kevpr0HVtRmVLOkP1Ls+1j0LUVtYn9F/MWVJvPcyH26cC6Gt4xXINK1kCPKoq
	 CZSHBYfu0UVdTWJeB8QDcYPIhvgdwBnZ+NQwkh8OLayk7usqtJeFGsgrIUuyTrQn+i
	 pcdKeg6lNPu2HR+gipExMaGCISk+hcxjhAn7CrMWlBwJNsGRGoUtch82+18196UVmE
	 iHIvo6TuakF8hRKTsfp1XDfBk9IowxK/LKmXqnn5sjzwyjJA2M/ioBuC7oECwjB2Si
	 L32xp49wSm4MA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BhOOIRjsnGOe; Thu, 14 Dec 2023 20:30:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 403ED40466;
	Thu, 14 Dec 2023 20:30:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 403ED40466
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 369451BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 20:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0DEFE83AB8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 20:29:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0DEFE83AB8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id urQlNb4VhCK4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 20:29:57 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD7B6838ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 20:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD7B6838ED
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-318-5GUgEX7jPwWPtVsstfDcdw-1; Thu, 14 Dec 2023 15:29:54 -0500
X-MC-Unique: 5GUgEX7jPwWPtVsstfDcdw-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a1df644f6a8so134878466b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 12:29:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702585793; x=1703190593;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0VeWMzNSZ2QNuDqNT7iu3DaR/0LYYsUyqA3zg/AVtiI=;
 b=oKgVoKKm4iaBWbQRAXxmdiiIwv0o9Ma+A/meui0uRJ3lv1sL3tMK2s022BirQ267sB
 cMjZ4PH3KlUwQewCUc65wt7pdonKB3g9sMDO3fbVgACmJw9EhKUgcnut0W3db823iIfb
 N0yTrY/tf74QzbxuIuElL8+rYPr/mwQLLs3KqUBkqKjn128/G/mQ/jewzZNn40CHdCCC
 rDme3i1mDyFM+/bzO/E9Y1YaZm48FfN8VE91eMykIf8r+19lQ+k5jhbKzmiGRgz4NFoL
 IGYPG8kICaNeEExtXRViqlAG71z0nQ/h3YBcKN147EWec9tnlZpmWnlqQ2gEGVqBwK+/
 OGUA==
X-Gm-Message-State: AOJu0Yyhpv8tOYlrmVJLkZZUmkTeZdAAzTyLhA4ZVvK2zRL00CNafppi
 oVT71FnCSEyF2G8LnjqykQzw+G1KJq/k+CGtVpT0sAGWxZukOOl1ZX92/vLhh5JsF0O7tOMNPQS
 8UeOYTWv+yURr7aPKQioeanBxid4s7Q==
X-Received: by 2002:a17:907:c312:b0:a01:ae7b:d19b with SMTP id
 tl18-20020a170907c31200b00a01ae7bd19bmr12287953ejc.7.1702585793644; 
 Thu, 14 Dec 2023 12:29:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEVB8NJENF9W5+PYVg9IhRQTIGKS5k2J1bPNOEPW/tQ/WtjWH/+1BYcrSLI5KXZKzQnB2Ldxg==
X-Received: by 2002:a17:907:c312:b0:a01:ae7b:d19b with SMTP id
 tl18-20020a170907c31200b00a01ae7bd19bmr12287942ejc.7.1702585793261; 
 Thu, 14 Dec 2023 12:29:53 -0800 (PST)
Received: from gerbillo.redhat.com ([84.33.188.175])
 by smtp.gmail.com with ESMTPSA id
 cu12-20020a170906ba8c00b00a10f3030e11sm9856479ejd.1.2023.12.14.12.29.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Dec 2023 12:29:52 -0800 (PST)
Message-ID: <55e51b97c29894ebe61184ab94f7e3d8486e083a.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Date: Thu, 14 Dec 2023 21:29:51 +0100
In-Reply-To: <20231127174329.6dffea07@kernel.org>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com> <ZORRzEBcUDEjMniz@nanopsycho>
 <20230822081255.7a36fa4d@kernel.org> <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
 <20231118084843.70c344d9@kernel.org>
 <3d60fabf-7edf-47a2-9b95-29b0d9b9e236@intel.com>
 <20231122192201.245a0797@kernel.org>
 <e662dca5-84e4-4f7b-bfa3-50bce30c697c@intel.com>
 <20231127174329.6dffea07@kernel.org>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1702585796;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0VeWMzNSZ2QNuDqNT7iu3DaR/0LYYsUyqA3zg/AVtiI=;
 b=ihiCPmiII0VPLrva7ZS2R9MR0Xnr6ZuXiM2c2US4QvW49Jxvq7mZeVM4/LuSsMUV8/07gX
 0warOTfxcosFw3RUI+Z4B3y0eUi96zSwXxNhm5bQjeJyxxCyYnfHzB0uGXHNMzYK+iPBAD
 Q8+ucfxh/gIsYuGlYyU6ZWYqLm7LT5I=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=ihiCPmiI
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 Simon Horman <simon.horman@redhat.com>, anthony.l.nguyen@intel.com, "Chittim,
 Madhu" <madhu.chittim@intel.com>, maxtram95@gmail.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org, Wenjun Wu <wenjun1.wu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2023-11-27 at 17:43 -0800, Jakub Kicinski wrote:
> On Mon, 27 Nov 2023 16:15:47 -0800 Zhang, Xuejun wrote:
> > This is extension of ndo_set_tx_maxrate to include per queue parameters 
> > of tx_minrate and burst.
> > 
> > devlink rate api includes tx_maxrate and tx_minrate, it is intended for 
> > port rate configurations.
> > 
> > With regarding to tc mqprio, it is being used to configure queue group 
> > per tc.
> > 
> > For sriov ndo ndo_set_vf_rate, that has been used for overall VF rate 
> > configuration, not for queue based rate configuration.
> > 
> > It seems there are differences on intent of the aforementioned APIs.
> > 
> > Our use case here is to allow user (i.e @ uAPI) to configure tx rates of 
> > max rate & min rate per VF queue.Hence we are inclined to 
> > ndo_set_tx_maxrate extension.
> 
> I said:
> 
>   So since you asked for my opinion - my opinion is that step 1 is to
>   create a common representation of what we already have and feed it
>   to the drivers via a single interface. I could just be taking sysfs
>   maxrate and feeding it to the driver via the devlink rate interface.
>   If we have the right internals I give 0 cares about what uAPI you pick.
> 
> https://lore.kernel.org/all/20231118084843.70c344d9@kernel.org/
> 
> Again, the first step is creating a common kernel <> driver interface
> which can be used to send to the driver the configuration from the
> existing 4 interfaces.

Together with Simon, I spent some time on the above. We think the
ndo_setup_tc(TC_SETUP_QDISC_TBF) hook could be used as common basis for
this offloads, with some small extensions (adding a 'max_rate' param,
too).

The idea would be:
- 'fixing' sch_btf so that the s/w path became a no-op when h/w offload
is enabled
- extend sch_btf to support max rate
- do the relevant ice implementation
- ndo_set_tx_maxrate could be replaced with the mentioned ndo call (the
latter interface is a strict super-set of former)
- ndo_set_vf_rate could also be replaced with the mentioned ndo call
(with another small extension to the offload data)

I think mqprio deserves it's own separate offload interface, as it
covers multiple tasks other than shaping (grouping queues and mapping
priority to classes)

In the long run we could have a generic implementation of the
ndo_setup_tc(TC_SETUP_QDISC_TBF) in term of devlink rate adding a
generic way to fetch the devlink_port instance corresponding to the
given netdev and mapping the TBF features to the devlink_rate API.

Not starting this due to what Jiri mentioned [1].

WDYT?

Thanks,

Paolo and Simon

[1] https://lore.kernel.org/netdev/ZORRzEBcUDEjMniz@nanopsycho/

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
