Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F7A6BAFC5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Mar 2023 13:01:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CB6F41844;
	Wed, 15 Mar 2023 12:01:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CB6F41844
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678881672;
	bh=GjZ3yEoWKk6P7NcmJ7DaMFL/rEvTlhuvRCEEZ0KkAuw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iNE5dSEy9pwM48syR05WRpQFHQb1ZasnDWd1Hv9gcg9JbrOxAb6OK5Feb5+iLz+c8
	 TtVox5YtF8V89Kx+G7XO8xSNmKm5apRFRqpyjf1CDJYV88P2TcDpsx6uaox2/ZFosh
	 wiEeShnZkK7Y4dw41e+JN/AVDsf0iGWG6+nKEkfNXWDvwyeTLnHY3JW4f1In9pNQBO
	 aStd16mgAaMbIEbVQn7HROo+B70J7VwAJ950/Hf7KzTV2KYkWJ5wG/29T64D3AmdSj
	 mLu4zFO2PlelTDJvHbcRZnX379wiqP/Byyv7rTqzhl5/FSTVz8T46Fv/5JPFyGNAgK
	 V8AJcuxU0mOBA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c85klhn6tmcX; Wed, 15 Mar 2023 12:01:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1853D417F7;
	Wed, 15 Mar 2023 12:01:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1853D417F7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 28B481BF318
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 12:01:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0ECE7408EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 12:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0ECE7408EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jTx4pUlQFyYu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Mar 2023 12:01:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66912403A2
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 66912403A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 12:01:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="318075570"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="318075570"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 05:00:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="672709559"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="672709559"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.17])
 ([10.13.12.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 05:00:48 -0700
Message-ID: <0d77dd8b-a740-ea96-20db-e6c01d466d31@linux.intel.com>
Date: Wed, 15 Mar 2023 14:00:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Bjorn Helgaas <helgaas@kernel.org>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
References: <20230307181940.868828-1-helgaas@kernel.org>
 <20230307181940.868828-22-helgaas@kernel.org>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230307181940.868828-22-helgaas@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678881664; x=1710417664;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=xvpCIVJIeu4ZIm/FbqSI4upuLqHv8hDiajWcFPM3La4=;
 b=ZxhGBwMBDwU0SRox86zTEtxGkJvXG27ysBAh7maV9AsVA/McvBPqleux
 YSGUSUSmG7bIfx3ZN3bmFPHjGWBkMjhZtGVqkgM71S17iSKmLYqCtndYU
 iL0fqgqYcetrYfBIsAsIIhUfRKyMs/D2hmXD6iLfjJcnjoszjx4mkQRea
 8VS6JRWnUa3sgLTM3eC89hgN+GA9kZ8OIikoaDu4WhYYII+uoUvkY13X/
 mkKYIXo/4Xcbth3wUVXfoIhvBPwd3YlRTUa4QBWuqeH3Wq7kzY5plb2I8
 ud9VfR8NJFyIRIagBvnUZcivmywJ+1ncXwKtPgValjkAW4gJJfamdtbmK
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZxhGBwMB
Subject: Re: [Intel-wired-lan] [PATCH 21/28] e1000e: Remove unnecessary
 aer.h include
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/7/2023 20:19, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> <linux/aer.h> is unused, so remove it.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 1 -
>   1 file changed, 1 deletion(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
