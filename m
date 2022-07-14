Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17505574A9D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jul 2022 12:31:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F0CD848B4;
	Thu, 14 Jul 2022 10:31:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F0CD848B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657794661;
	bh=5bc3tPpAkqJuXBdtloXYwaphpoPqnQrQCebrzSkodWs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dSV5E/9Z7f1Lt8rXHlFla7396L5PlkXK5TJ55cc7KTZT9TdEEjrixKs7HuLbkUQU1
	 fEpd1ZBOfo1oslU8GvE0GuPKF2yQVseJa0H0dAV3gkLqPbEeIRE+7B/SCf3EaC7xhw
	 whxFYaQvyywon7AmN0OPa/2QNFILX2SAMqdBB5jZPxKPpzeIibHSRkUVOmZhCHJvaX
	 ti/F2qbSr74rxQD5kRYnGDH3WtfTUvJcOISF3E6vBefdzma0QdEDEZ0PnX8aG6vohA
	 WXtVyqM+ZqsA0WG4PsZUjvoicRpqtCwi0vuxqdEX4aBSk4KdACRiR378gOVB0lauJP
	 buQSLkOtC2zvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W4OWcSlldhSq; Thu, 14 Jul 2022 10:31:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7339E84717;
	Thu, 14 Jul 2022 10:31:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7339E84717
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F2DF1BF36F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 10:30:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2741961558
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 10:30:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2741961558
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4BK0GbB26aNo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jul 2022 10:30:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 646516154D
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 646516154D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 10:30:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10407"; a="265263893"
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="265263893"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 03:30:53 -0700
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="571021636"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.11.253])
 ([10.13.11.253])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 03:30:52 -0700
Message-ID: <017eee5d-9b39-6f72-8273-4ab9967ffab0@linux.intel.com>
Date: Thu, 14 Jul 2022 13:30:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220705041910.3849895-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220705041910.3849895-1-sasha.neftin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657794654; x=1689330654;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=2dDHlxU+2VS/uXyYZ14gRwfDhN81jfTJ7Wz0y6m5rMs=;
 b=IKqTel5dyqPhe0wyucyejIR1Az0tcYIAul51dNKYmZjJ1a4bjQh8vCGT
 stc4/wWXjCUCFj0MVNjKTScRCqJfkoQmkIlbHY4vsFYVozrXWuWU6+cAf
 MMYhqdO5Iam87fpE9q4QMESgSmfjJo0v9socNzlcdClNdM1JZyVfyMp79
 IbmaWPw3xkvMwY1ZA9gv/Vo98sbnUOLnC3Iz8aeoaPVwa2NDw8dO/KsNJ
 nZjiMIDzL5e944JI2dZM4Q/y7TCpwyTOJBDYeOWuf99LoINLkLto1kmL1
 WeWferlwsQhTLAkBg9YW62UQaMD1FrVO7mcvI5Rrg/1p/JwMJaYFwXNNV
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IKqTel5d
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove MSI-X PBA Clear
 register
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/5/2022 07:19, Sasha Neftin wrote:
> MSI-X PBA Clear register is not used. This patch comes to tidy up the
> driver code.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_regs.h | 3 ---
>   1 file changed, 3 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
