Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E919E7CAC98
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Oct 2023 16:56:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A48D41774;
	Mon, 16 Oct 2023 14:56:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A48D41774
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697468193;
	bh=bmKtMvke+5MqimV8GUDFR1R+ZFuUyzHlo75awQ+CjB8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pdQVCIjBOsRjfRZpizHMfEs5WzV46ULDopHDNtvE+g68rnGe2JwtBBGR+e8fvHQGH
	 vpLncXn/JBCvmqAOe/g0KsfC27jWb87+QWa4HsL6OpLh/zajhlP7Bb300ajk9ySc8h
	 uhy1Dg+49t7VAWevfdz4gtj5rsEEySOTXGiIqf4POFPPMcZ4ss6vTqAVpP3Wf+SNAq
	 ym64v9kqQlJpQ4MOU1MRTN+oGigtzGiyJzIUhVhOrS1rc/xBc+vAcJwhmU0N9SNBaN
	 ImhiWKOTZh8OTvkGHIZdmqF0UimhNQ1BfhFaDu7zBvuo5bthYYzFK/GHf2k0ZRlkf8
	 lgWjGgmIRF2aQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ttXMWuKw3iHl; Mon, 16 Oct 2023 14:56:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A388341758;
	Mon, 16 Oct 2023 14:56:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A388341758
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 616301BF28E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 14:56:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 328EC414A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 14:56:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 328EC414A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NKPmrbUH3NPu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Oct 2023 14:56:23 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 27116408C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Oct 2023 14:56:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27116408C0
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C9025603E0;
 Mon, 16 Oct 2023 14:56:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67E9BC433C7;
 Mon, 16 Oct 2023 14:56:20 +0000 (UTC)
Date: Mon, 16 Oct 2023 07:56:19 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20231016075619.02d1dd27@kernel.org>
In-Reply-To: <20231013170755.2367410-4-ivecera@redhat.com>
References: <20231013170755.2367410-1-ivecera@redhat.com>
 <20231013170755.2367410-4-ivecera@redhat.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697468180;
 bh=WUnDHVUOqfcPj5bVg+fqz9I2iqfRHmXakB6J7g0FSl0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tBaHa4rN2f9ZyQl8PO3D969/xIInxobp0Agmgswj4NYeEzKJt+Yd7gKTjQ85y4/ps
 vONoeTQn9sA1D7eJw0BeGNIDBFDXBgu+cuyXsm0PM88sEj5UgAictN722B3haxDhad
 I8nV4q4exbAqN6Mf1a7NbrUxI+lkf7ptzG8ZcLVnkXBn+UcNjHyo7wQMy4+E8reMGR
 oLr7pUPkemFg0Z9yIifcwLdr2ubw6+/6+4vQ10oomAedeksnDJYLfQRhLIGPWjrmHz
 RKO7CgX/X464Ldl5bpLeK06sAMOI2ULsNx8CFVejQ6OH5HgMjjZE1lWyIMSt7+VHKy
 4jbKvne1+vUEw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tBaHa4rN
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] i40e: Add handler for
 devlink .info_get
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 13 Oct 2023 19:07:53 +0200 Ivan Vecera wrote:
>  "serial_number" -> The PCI DSN of the adapter
>  "fw.mgmt" -> The version of the firmware
>  "fw.mgmt.api" -> The API version of interface exposed over the AdminQ
>  "fw.psid" -> The version of the NVM image

Your board reports "fw.psid 9.30", this may not be right,
PSID is more of a board+customer ID, IIUC. 9.30 looks like
a version, not an ID.

>  "fw.bundle_id" -> Unique identifier for the combined flash image
>  "fw.undi" -> The combo image version

UNDI means PXE. Is that whave "combo image" means for Intel?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
