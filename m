Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F4780B097
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Dec 2023 00:31:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 341346F6A0;
	Fri,  8 Dec 2023 23:31:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 341346F6A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702078268;
	bh=irR7lOjY4iyAk3NCvEyTIWqeFPRTQ5YhxWtBErHRnTY=;
	h=From:To:In-reply-to:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gPiV14r1VlPGrzPEnrbWgIffZFeVdmLdWw6YLh8jwY4gXMjDYuOa1V0jl1U+9Q5I/
	 RI4Wh3CLBtz6cAJf52FVbmWCl83EKiHNn+kYvK78q7WVeZd3C4w5TzeQSJu0Leh54W
	 8Jv1NgR0u9B75clkBlLBwIO4Xhtbf6VHKzQR26FuGpHeGCGKAQgEV5hfatBWPTR2Vk
	 IwWPipw9MHiQH2amfLHjI9/o1nYAepEUGB80mn638Z3IdVSeZ8xE+62Sa6SYfOh0BR
	 WjhixDLO4v4ghCZpCVdJIpAmw0c+bWSJTQeNw0uV1DHbYmAha6EBCVkPnk8FL2elDb
	 eMrmUdHwDbYag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ABjWgpoeXZeF; Fri,  8 Dec 2023 23:31:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBEF660F41;
	Fri,  8 Dec 2023 23:31:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBEF660F41
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A279B1BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 23:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 792A760F41
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 23:31:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 792A760F41
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Hkmvxkqcqi0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 23:31:00 +0000 (UTC)
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0E90460F3E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 23:30:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E90460F3E
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3BF923F18B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 23:30:57 +0000 (UTC)
Received: by mail-il1-f197.google.com with SMTP id
 e9e14a558f8ab-35d47b916a1so25404515ab.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 Dec 2023 15:30:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1702078256; x=1702683056;
 h=message-id:date:content-transfer-encoding:content-id:mime-version
 :comments:references:in-reply-to:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=W4YmvBWrOBzInEYUWdzBgaE35XDrnqoquNNpR5Ozyw8=;
 b=oEGy2F8OAI9rdcocz7qV5JGH5S0a8FtzgrjtwoQBbscaDamPrtdzBSyeK4BzuPuIQ3
 gGzyFDetCKoaRdsLJ0zQ0X7rChIIiYrPkTiQR8vdwomCc30imkrmm2x4IyJjADRHVTgS
 tyxGfm/JzzrpA84PmnpyrYjHEJQPEXJ4uNyAICqCuooOrwz30hoiu3b2nVyDxvJj8eSO
 g5j948dnuNN/ubf9QsIyCp6AhfHvuYMHLPBY6epH5bn+XbI8gH5pwGp54uPhoSL3c6PC
 oyQXkFH5J9Pp1Jd0ORPgA+L+HjmKNBdtVKB4s1t/NTGXwZ0lb5bbbgbMEQ3LSKPosMgM
 Inaw==
X-Gm-Message-State: AOJu0YxnfXB5mT7MWd1GQx4liR1baoZA9yCCscnH+egQoWQw2L5fmKH1
 xLuWZ29jkrOVpwxujgCAgRJyr3dq3zlLSDxWKRasWMLYVP6euhbhirYTos5eZF6MPjfnpCcI0WC
 HS8jVk2wz+Pct3vjNTD69svA6dhbCs71BC/XBD5fH+OmpsaE=
X-Received: by 2002:a92:cdae:0:b0:35d:59a2:1285 with SMTP id
 g14-20020a92cdae000000b0035d59a21285mr1173530ild.49.1702078255922; 
 Fri, 08 Dec 2023 15:30:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEfsWTaPFJlhMNBh4Ocy0DObSJXiXWvrbBSbZz0L4YyFpOPyuwVQUfGjYVcOrHUq4/BJxnsEw==
X-Received: by 2002:a92:cdae:0:b0:35d:59a2:1285 with SMTP id
 g14-20020a92cdae000000b0035d59a21285mr1173517ild.49.1702078255572; 
 Fri, 08 Dec 2023 15:30:55 -0800 (PST)
Received: from famine.localdomain ([50.125.80.253])
 by smtp.gmail.com with ESMTPSA id
 k10-20020a170902694a00b001d0ba4513b0sm2232119plt.287.2023.12.08.15.30.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 08 Dec 2023 15:30:55 -0800 (PST)
Received: by famine.localdomain (Postfix, from userid 1000)
 id CCFF25FFF6; Fri,  8 Dec 2023 15:30:54 -0800 (PST)
Received: from famine (localhost [127.0.0.1])
 by famine.localdomain (Postfix) with ESMTP id C52D09F88E;
 Fri,  8 Dec 2023 15:30:54 -0800 (PST)
From: Jay Vosburgh <jay.vosburgh@canonical.com>
To: "Ertman, David M" <david.m.ertman@intel.com>
In-reply-to: <MW5PR11MB581150E2535B00AD04A37913DD8AA@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20231207182158.2199799-1-david.m.ertman@intel.com>
 <bca6d80f-21de-f6dd-7b86-3daa867323e1@intel.com>
 <MW5PR11MB581150E2535B00AD04A37913DD8AA@MW5PR11MB5811.namprd11.prod.outlook.com>
Comments: In-reply-to "Ertman, David M" <david.m.ertman@intel.com>
 message dated "Fri, 08 Dec 2023 22:24:06 +0000."
X-Mailer: MH-E 8.6+git; nmh 1.6; Emacs 29.0.50
MIME-Version: 1.0
Content-ID: <21389.1702078254.1@famine>
Date: Fri, 08 Dec 2023 15:30:54 -0800
Message-ID: <21390.1702078254@famine>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1702078257;
 bh=W4YmvBWrOBzInEYUWdzBgaE35XDrnqoquNNpR5Ozyw8=;
 h=From:To:cc:Subject:In-reply-to:References:MIME-Version:
 Content-Type:Date:Message-ID;
 b=ND/Dxwpr29QmIAdE/Wd7H2nEF3xeS2TNEvelF118ZGXztUigLJvT3cYkiMvZ7KVbO
 7MhGM/vdte7VYqVmN7UBpsW+4guqa392OtecmSwHLa0sFLtCE3ory+c3Xhpm/8WIlJ
 NqpcPiPRT6ragI8Togf376f3a22OYHT48yR2rR76dqtXS7jgNPbCnnSe5PEOebIIiP
 LdBh9fnIEAtufiSEGV2ZNWBOOawrU5MqXghf5Dde5dtA51vOXHjR7WZG3Xw7E+AZ6a
 RD5gfsMhyaDIiblnLoHiEsOu98C1YIHvuYlTXiyRzWBzkegf58UcQqvmxKFxx5bnhM
 f9wXILKD97z3g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=ND/Dxwpr
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: alter feature support
 check for SRIOV and LAG
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
Cc: Robert Malz <robert.malz@canonical.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg, 
 Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 Heitor Alves de Siqueira <heitor.de.siqueira@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ertman, David M <david.m.ertman@intel.com> wrote:

>> -----Original Message-----
>> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
>> Sent: Friday, December 8, 2023 1:18 PM
>> To: Ertman, David M <david.m.ertman@intel.com>; intel-wired-
>> lan@lists.osuosl.org
>> Cc: netdev@vger.kernel.org; Brandeburg, Jesse
>> <jesse.brandeburg@intel.com>
>> Subject: Re: [PATCH iwl-next] ice: alter feature support check for SRIOV and
>> LAG
>> 
>> 
>> 
>> On 12/7/2023 10:21 AM, Dave Ertman wrote:
>> > Previously, the ice driver had support for using a hanldler for bonding
>> > netdev events to ensure that conflicting features were not allowed to be
>> > activated at the same time.  While this was still in place, additional
>> > support was added to specifically support SRIOV and LAG together.  These
>> > both utilized the netdev event handler, but the SRIOV and LAG feature was
>> > behind a capabilities feature check to make sure the current NVM has
>> > support.
>> >
>> > The exclusion part of the event handler should be removed since there are
>> > users who have custom made solutions that depend on the non-exclusion
>> of
>> > features.
>> >
>> > Wrap the creation/registration and cleanup of the event handler and
>> > associated structs in the probe flow with a feature check so that the
>> > only systems that support the full implementation of LAG features will
>> > initialize support.  This will leave other systems unhindered with
>> > functionality as it existed before any LAG code was added.
>> 
>> This sounds like a bug fix? Should it be for iwl-net?
>>
>
>To my knowledge, this issue has not been reported by any users and was found
>through code inspection.  Would you still recommend iwl-net?

	We have a customer experiencing intermittent issues with
transmit timeouts that go away if we disable the LAG integration as
suggested at [0] (or don't use bonding).  This is on the Ubuntu 5.15
based distro kernel, not upstream, but it does not manifest with the OOT
driver, and seems somehow related to the LAG offloading functionality.

	There was also a post to the list describing similar effects
last month [1], that one seems to be on an Ubuntu 6.2 distro kernel.

	Could these issues be plausibly related to the change in this
patch?

	-J
	
[0]
https://bugs.launchpad.net/ubuntu/+source/linux/+bug/2036239/comments/40
[1]
https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20231120/038096.html



>DaveE
> 
>> > Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>> > Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
>> > ---
>> >   drivers/net/ethernet/intel/ice/ice_lag.c | 2 ++
>> >   1 file changed, 2 insertions(+)
>> >
>> > diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c
>> b/drivers/net/ethernet/intel/ice/ice_lag.c
>> > index 280994ee5933..b47cd43ae871 100644
>> > --- a/drivers/net/ethernet/intel/ice/ice_lag.c
>> > +++ b/drivers/net/ethernet/intel/ice/ice_lag.c
>> > @@ -1981,6 +1981,8 @@ int ice_init_lag(struct ice_pf *pf)
>> >   	int n, err;
>> >
>> >   	ice_lag_init_feature_support_flag(pf);
>> > +	if (!ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
>> > +		return 0;
>> >
>> >   	pf->lag = kzalloc(sizeof(*lag), GFP_KERNEL);
>> >   	if (!pf->lag)

---
	-Jay Vosburgh, jay.vosburgh@canonical.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
