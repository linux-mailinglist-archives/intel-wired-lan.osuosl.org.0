Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8985B7CE701
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 20:42:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B05340AFC;
	Wed, 18 Oct 2023 18:42:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B05340AFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697654549;
	bh=m53lSP4vvZTvks0SbWqfLDYO3iNotDJ3diFA8Fk/Ttw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=equknpupi06/NB7X4y155HpEIVS1ycWahAzZP+5687CUs8USTx1EsPuok2/a5bw4D
	 krWevtRlsj6iQlRsCAeQ92XJdKZV9bILyFJlGSRuamRHV/R6Itpcct2TwbvhVHrUk2
	 Y+AOF7xZtXympG2OZYCB8Dw2a4F+RU881f3bRXi+FDRMK1s9UljRh+Fn4ouEUZSqSF
	 Bgu8l/c3Mj73L3Fifr4LnrPzPzZfSRPu6znrEARk8HscmubZwybTzmj+NJ5cNsAxXX
	 moZYurcaYm32gik8LbTcKW5aAMhWXNSirmBJcZxcg55Kf28TgFI3deL1tDkXUjywjz
	 ScpHn2kYhpFcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1sR3Zs23Bfxt; Wed, 18 Oct 2023 18:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 34B66408B6;
	Wed, 18 Oct 2023 18:42:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34B66408B6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BF6FB1BF342
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:42:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94619408B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:42:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94619408B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wARVhSB7bfPE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 18:42:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F3B940102
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:42:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F3B940102
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="376453148"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="376453148"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 11:41:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="733270925"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="733270925"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.214.214.90])
 ([10.214.214.90])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 11:41:53 -0700
Message-ID: <2f85eb35-7f95-424b-ad66-e34dbad13279@linux.intel.com>
Date: Wed, 18 Oct 2023 21:41:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>
References: <20230921-igc-multiple-tstamp-vclock-v2-v1-0-aa0971cb0fe9@intel.com>
 <20230921-igc-multiple-tstamp-vclock-v2-v1-1-aa0971cb0fe9@intel.com>
Content-Language: en-US
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230921-igc-multiple-tstamp-vclock-v2-v1-1-aa0971cb0fe9@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697654540; x=1729190540;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=MGil/B5AdwKFq0uHTjO0RVVAv47EAwNbFNrWwJFC5fA=;
 b=gie6h1X9H9CH/r37y//7OJ7gbzL8fsamoZJq8Fwglaj5EeDJOeUJT72J
 7iy+DrRqOVK+IRKnAq/jFX22hK03hV10zHnR8CmgvsHDNQ4W10Qcndin1
 kvgi+OMcr2XdCXCX2U03vlsP6epIAa3snhYfwxXJDrEevUgzadopRcFKg
 N4HfBJaQRThCpsrKtqHUNmQsMDbwS6hnllVdbgYwFUM2X68OkXPJPTBxr
 Rq63fNFd3zGkwry1M9nuxluxb4GoSxwpd+SW1bwQVSDIS5hOtB745g2jC
 K+wIJlZCitiK+GU/VNN7VXUkg+29OMdIXCB5gDjwFC1IbSFdmWRV/UKJ9
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gie6h1X9
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] igc: Simplify setting
 flags in the TX data descriptor
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/22/2023 04:40, Vinicius Costa Gomes wrote:
> We can re-use the IGC_SET_FLAG() macro to simplify setting some values
> in the TX data descriptor. With the macro it's easier to get the
> meaning of the operations.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 10 ++++------
>   1 file changed, 4 insertions(+), 6 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
