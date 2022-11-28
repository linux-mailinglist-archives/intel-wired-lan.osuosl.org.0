Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6573463AE19
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:50:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32460400DB;
	Mon, 28 Nov 2022 16:50:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32460400DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669654235;
	bh=OTACC8aki73j3iKBtaDkRtUUsuEMtVbgkihbgEVt67s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=56xemAHO+3xv72zakg4vckGX+t4o6Dpz6MPYHin2kXx1Jhg2Yyh3kWAPJ78l/976m
	 D+68Jv/qGP3OFrs65ENEgYlLjOk2vRwWKp8q6C19/abvdh/pJoObipHgG1bhG0QBf3
	 7z1fDA/82VjkP6krmgnvUmExILtp6F37Sw9m/puHnkgY0uLZMen5LWkDdNifrG+8IU
	 vIrmSqzFYCGsoATzxa/KvPARKkDuwtubEDa+rmnW262p0l1igoI3pOCkeOkIFUj7nN
	 RFEAKVfxL4q/aeiNRBsd1XM7rjJyMCuwaSx+L9AcNJQXFVYVGdYzOXnTfDnUTqvYHd
	 d6X0kgSpwHc0A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BSVkPpCaPQ_P; Mon, 28 Nov 2022 16:50:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3581F403A7;
	Mon, 28 Nov 2022 16:50:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3581F403A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB8F51BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 16:50:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95AC860BA6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 16:50:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95AC860BA6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qq4xpqXONNyv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 16:50:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C368260AB8
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C368260AB8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 16:50:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="377028637"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="377028637"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 08:50:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="749461169"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="749461169"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2022 08:50:25 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2ASGoO3N015269; Mon, 28 Nov 2022 16:50:24 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Mon, 28 Nov 2022 17:49:32 +0100
Message-Id: <20221128164932.2859005-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221123201926.159418-1-pavan.kumar.linga@intel.com>
References: <20221123201926.159418-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669654228; x=1701190228;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cl5fgFmc0MlHJPJqQ9rZ/u8C9vOTLw5KNO4jPDxMI9c=;
 b=nSpYiOZp+iK1NdKsU19QpR50Yzj1ebunN+LFMeDqmjn90gtYfClnI02U
 oXHlYRdpL+r1Rkjn4bW2cGvtGVJghzH7+hmjNG7135wnP+gjhli0W1I9x
 +mags9bf6Z18MhVplXdh+E1n9uoSm/gUADcqwKbcSxDYZsAWT4Ouh9FEK
 +Ife9nSJNkpveTrH9z7YcaJhaxxyp/QO0Z9Fi50ZruEfp2necuNkBjSBJ
 vb6rNx5LNwLtshdumGm3DE4m7AYyHRSIb8h8iv7hzmoCBHk2DMM4+Zd74
 FyYMfF37Vbruk1xU6y6gPFz1csQcGandGnsXVf03wErPCnSfO66mzS+S1
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nSpYiOZp
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 0/1] idpf: add IDPF
 driver for initial feedback
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
Cc: intel-wired-lan@lists.osuosl.org, phani.r.burra@intel.com,
 madhu.chittim@intel.com, shailendra.bhatnagar@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Wed, 23 Nov 2022 15:19:26 -0500

> This adds the Infrastructure Data Path Function (IDPF) driver
> code as a single RFC patch. The main idea is to introduce the
> IDPF driver just for initial feedback while this code is being
> prepared into a proper series to be submitted to the mailing list
> i.e. this patch is not intended to be merged but to get the feedback.
> 
> IDPF driver is used for both physical and virtual functions.
> Except for some of the device operations, rest of the functionality
> is same for both PF and VF. It uses virtchnl version2 opcodes and
> structures defined in 'virtchnl2' header file which helps the driver
> to learn most of the capabilities and register offsets from the
> device Control Plane (CP) instead of assuming the default values.

Eeeeh, how came you completely ignored all the already existing
comments from the internal MLs and didn't even provide a proper
series to review there internally, not speaking of sending a 20k+
chunk to IWL, which is a part of LKML? Are you aware LKML rejects
messages containing more than a couple thousand lines? LKML is not
the internal MLs to throw raw diffs or poor quality patches at.
You know the rules of submitting networking patches, right? Which
are the same for all the Intel networking folks? Why do you
deliberately violate them then? I haven't seen a word in those
rules saying "you can ignore this if your deadline is coming".

> 
> Pavan Kumar Linga (1):
>   idpf: introduce IDPF driver

[...]

> -- 
> 2.37.3

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
