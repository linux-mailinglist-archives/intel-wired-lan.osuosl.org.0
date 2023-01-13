Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A69866A267
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 19:53:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 93914415AF;
	Fri, 13 Jan 2023 18:53:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93914415AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673635988;
	bh=7C35LMNbTl09EjbxRNU+3Rh7d1WjMP2yypBg113T80E=;
	h=From:To:In-reply-to:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FBwlT2zK7FoZavAHxbS3YJYt56/41gh8y3jBX2jcItvGcmiNAxAvrqIDtM24cQOfm
	 MStaD9o8wh3rzvc6p5uG09DY0EESWLd1LCX3RpFQb66r/NULwEli+KpdtfU9RkkG7v
	 VeOAtMPTKKqXP2JZR1faeR7b5GTftGJ9ovW7Nl5vIpPW+QwdM5ra+FDjvSim0j2gxJ
	 UJjbpPKb97W//EECAxh9Ug+aui/riJrB76Wm0+ylfXrcZUAbRTwH9ZKfm++I7ql+kn
	 38DVe+NJVxzaoiU1+sT4506PsQE0iwKpikbkBynnhmRoP6FTTND6dWnAhoxK8gI30A
	 joJ5z0im5DFSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NCLd0y3D7dXq; Fri, 13 Jan 2023 18:53:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 580D4415AC;
	Fri, 13 Jan 2023 18:53:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 580D4415AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D0D31BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 18:53:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 366CA40571
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 18:53:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 366CA40571
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1grcjzVnrvBe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 18:53:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EADB1400CB
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EADB1400CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 18:53:00 +0000 (UTC)
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com
 [209.85.214.198])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 03F5D4166F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 18:52:55 +0000 (UTC)
Received: by mail-pl1-f198.google.com with SMTP id
 n1-20020a170902e54100b00192cc6850ffso15352298plf.18
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 10:52:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=message-id:date:content-transfer-encoding:content-id:mime-version
 :comments:references:in-reply-to:subject:cc:to:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=GJsolzbzM5eU/x28np1ztagSjdJzYA40UM8agFVJZz4=;
 b=Y2y3ZzR2viFzvF7IEJhcsP1utjOyPDI8kbC5Byzkn65wu7/MKfqhRAGkI8/cwcJFhT
 C8wr9hCW+IzPhacyOsy9YGfaO2neB+FGggDfYHVT4mf6s3RjRbPMUWODzdgDMy4H8vo7
 S2nos8bnPOb3a9AcsoKnASEHx0ye3BQmxr0QpWjo97/Pi7aRC9gZjUDEXCyfJHthBakW
 QvmDMQHCkWSnaF5nsjqB4r7ENdf3k4g/6+GQef9gms6qyJ53KIBjmyyeGXKTwALf9uVd
 8sJN/jnoW2Pzt/qI6wIlLVKIlCvjg1PJuFBp5jxr2lStaeE9JiWiVifKEa0bdCjfiTvC
 Djtw==
X-Gm-Message-State: AFqh2kow8eY5S/ELAls3TwqRNTpAtWfCbTFejjehPT3qT2EtJUNqDdHP
 ZJs2UbRGeaJuYhN7HK1KD7gnG6jtUcnvyEXPCLOAks2SZOPGXFl45hPaJZQEgwkLahoHJGegR8k
 wEfIZwAGle6qEGSOygvD2jwpMLOC1V5kY3vrIU+bNjOB3/Zg=
X-Received: by 2002:a17:902:7688:b0:192:ce01:7d82 with SMTP id
 m8-20020a170902768800b00192ce017d82mr41406195pll.52.1673635973583; 
 Fri, 13 Jan 2023 10:52:53 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtQVcGNaNjRtZGwUO5rHF9l3TyYPLYCcrz9zVnw0DBB4zE3gt6/puojujZ7+/y+INnq1kNsTg==
X-Received: by 2002:a17:902:7688:b0:192:ce01:7d82 with SMTP id
 m8-20020a170902768800b00192ce017d82mr41406182pll.52.1673635973282; 
 Fri, 13 Jan 2023 10:52:53 -0800 (PST)
Received: from famine.localdomain ([50.125.80.253])
 by smtp.gmail.com with ESMTPSA id
 u16-20020a170902e5d000b00172fad607b3sm14424151plf.207.2023.01.13.10.52.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Jan 2023 10:52:52 -0800 (PST)
Received: by famine.localdomain (Postfix, from userid 1000)
 id 6B8505FEAC; Fri, 13 Jan 2023 10:52:52 -0800 (PST)
Received: from famine (localhost [127.0.0.1])
 by famine.localdomain (Postfix) with ESMTP id 63B0F9FB5C;
 Fri, 13 Jan 2023 10:52:52 -0800 (PST)
From: Jay Vosburgh <jay.vosburgh@canonical.com>
To: Dave Ertman <david.m.ertman@intel.com>
In-reply-to: <20230111183145.1497367-1-david.m.ertman@intel.com>
References: <20230111183145.1497367-1-david.m.ertman@intel.com>
Comments: In-reply-to Dave Ertman <david.m.ertman@intel.com>
 message dated "Wed, 11 Jan 2023 10:31:45 -0800."
X-Mailer: MH-E 8.6+git; nmh 1.6; Emacs 29.0.50
MIME-Version: 1.0
Content-ID: <30464.1673635972.1@famine>
Date: Fri, 13 Jan 2023 10:52:52 -0800
Message-ID: <30465.1673635972@famine>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1673635975;
 bh=GJsolzbzM5eU/x28np1ztagSjdJzYA40UM8agFVJZz4=;
 h=From:To:cc:Subject:In-reply-to:References:MIME-Version:
 Content-Type:Date:Message-ID;
 b=WxPi9s/s52OrrK0ry0nnwsP+VjeUALwkQMd4S8PuutwlphPNSfJaU5NuYUbcJJpBR
 R+G0vyvgzBgnASLP6M2uav8DxjOb5pr6xKGNXSGlS9u7yW85s4kdUcmeVqw5ldFrFt
 OQ4/Fn8H5Rb3CObCZKbikD202gTi5fkTttprsxgbNtWVJZcOK1EbBmflDLA791Y34b
 wzFUJsI1fbAvvhrPv09XefY+sPQiRcGs+5I7t13Jpu59bUqoOKGu1Wr8O+NpuDNsVw
 Wzhc2sD9ueZa6mISLT5yZj4JTyk7O3AEHVcsi+d8c3oyvXp5/rmMTaEtIu+N8BUDiM
 MWkTFYnyxmhKQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=WxPi9s/s
Subject: Re: [Intel-wired-lan] [PATCH net] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
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
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dave Ertman <david.m.ertman@intel.com> wrote:

>RDMA is not supported in ice on a PF that has been added to a bonded
>interface. To enforce this, when an interface enters a bond, we unplug
>the auxiliary device that supports RDMA functionality.  This unplug
>currently happens in the context of handling the netdev bonding event.
>This event is sent to the ice driver under RTNL context.  This is causing
>a deadlock where the RDMA driver is waiting for the RTNL lock to complete
>the removal.

	Why is RDMA disallowed on interfaces that are members of a bond?
Is this something specific to ice, or a generic problem with RDMA in
general?

	-J

>Defer the unplugging/re-plugging of the auxiliary device to the service
>task so that it is not performed under the RTNL lock context.
>
>Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
>Link: https://lore.kernel.org/linux-rdma/68b14b11-d0c7-65c9-4eeb-0487c95e395d@leemhuis.info/
>Fixes: 5cb1ebdbc434 ("ice: Fix race condition during interface enslave")
>Fixes: 425c9bd06b7a ("RDMA/irdma: Report the correct link speed")
>Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice.h      | 14 +++++---------
> drivers/net/ethernet/intel/ice/ice_main.c | 17 +++++++----------
> 2 files changed, 12 insertions(+), 19 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>index 2f0b604abc5e..0ad9bab84617 100644
>--- a/drivers/net/ethernet/intel/ice/ice.h
>+++ b/drivers/net/ethernet/intel/ice/ice.h
>@@ -506,6 +506,7 @@ enum ice_pf_flags {
> 	ICE_FLAG_VF_VLAN_PRUNING,
> 	ICE_FLAG_LINK_LENIENT_MODE_ENA,
> 	ICE_FLAG_PLUG_AUX_DEV,
>+	ICE_FLAG_UNPLUG_AUX_DEV,
> 	ICE_FLAG_MTU_CHANGED,
> 	ICE_FLAG_GNSS,			/* GNSS successfully initialized */
> 	ICE_PF_FLAGS_NBITS		/* must be last */
>@@ -950,16 +951,11 @@ static inline void ice_set_rdma_cap(struct ice_pf *pf)
>  */
> static inline void ice_clear_rdma_cap(struct ice_pf *pf)
> {
>-	/* We can directly unplug aux device here only if the flag bit
>-	 * ICE_FLAG_PLUG_AUX_DEV is not set because ice_unplug_aux_dev()
>-	 * could race with ice_plug_aux_dev() called from
>-	 * ice_service_task(). In this case we only clear that bit now and
>-	 * aux device will be unplugged later once ice_plug_aux_device()
>-	 * called from ice_service_task() finishes (see ice_service_task()).
>+	/* defer unplug to service task to avoid RTNL lock and
>+	 * clear PLUG bit so that pending plugs don't interfere
> 	 */
>-	if (!test_and_clear_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags))
>-		ice_unplug_aux_dev(pf);
>-
>+	clear_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags);
>+	set_bit(ICE_FLAG_UNPLUG_AUX_DEV, pf->flags);
> 	clear_bit(ICE_FLAG_RDMA_ENA, pf->flags);
> }
> #endif /* _ICE_H_ */
>diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>index a9a7f8b52140..e2bc1340833e 100644
>--- a/drivers/net/ethernet/intel/ice/ice_main.c
>+++ b/drivers/net/ethernet/intel/ice/ice_main.c
>@@ -2290,18 +2290,15 @@ static void ice_service_task(struct work_struct *work)
> 		}
> 	}
> 
>-	if (test_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags)) {
>-		/* Plug aux device per request */
>+	/* Plug aux device per request */
>+	if (test_and_clear_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags))
> 		ice_plug_aux_dev(pf);
> 
>-		/* Mark plugging as done but check whether unplug was
>-		 * requested during ice_plug_aux_dev() call
>-		 * (e.g. from ice_clear_rdma_cap()) and if so then
>-		 * plug aux device.
>-		 */
>-		if (!test_and_clear_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags))
>-			ice_unplug_aux_dev(pf);
>-	}
>+	/* unplug aux dev per request, if an unplug request came in
>+	 * while processing a plug request, this will handle it
>+	 */
>+	if (test_and_clear_bit(ICE_FLAG_UNPLUG_AUX_DEV, pf->flags))
>+		ice_unplug_aux_dev(pf);
> 
> 	if (test_and_clear_bit(ICE_FLAG_MTU_CHANGED, pf->flags)) {
> 		struct iidc_event *event;
>-- 
>2.37.3
>
>_______________________________________________
>Intel-wired-lan mailing list
>Intel-wired-lan@osuosl.org
>https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
