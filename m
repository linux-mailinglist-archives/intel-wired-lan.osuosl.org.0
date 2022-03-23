Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D8ED14E57F7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Mar 2022 18:56:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 328A884A6A;
	Wed, 23 Mar 2022 17:56:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v2Rwu9lL9N7D; Wed, 23 Mar 2022 17:56:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 363EC84A67;
	Wed, 23 Mar 2022 17:56:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF0B11BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:56:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DCC1884A66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ihKV7_7rD5SO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Mar 2022 17:56:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5544D84A5B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 17:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648058188; x=1679594188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UVTweHN61rHkZzXfM5jm3uhIUIF0gAVJSjh3UNXQLgA=;
 b=Xjaj+1LFDJmTAedoxhf2hwGnj7csRrGhVZmpVizhG9ZKeMMU6szcyBAf
 +4aem7+BAvnkt+NNRpS8B9422+PVL7Yk1VaZZGlRw8J7ywFUo+BsvrHuG
 y85YDOwHttCWKcPImQKycZw8FL1VTmxW4AjXIY2Sm1BPf6fm2Fl3NUhAa
 bRXQKmKucT6agm4aH6CL1+jw/6xFGP2fgi1Pf58kVjMCCo3rHPWNQAjoi
 fJ8OAAawNFFKh+bUETQUw8L/JKndJ4uBW4PI7vcvIO+3zTUngN3MnpxO8
 qBKVHF9oclThR0BZttO4wLmBQolP6zwfF0AuVY23pubOiHrw7ES9xWm9M Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="255753728"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="255753728"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 10:56:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="501100457"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga003.jf.intel.com with ESMTP; 23 Mar 2022 10:56:24 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22NHuMKm030590; Wed, 23 Mar 2022 17:56:22 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Date: Wed, 23 Mar 2022 18:54:46 +0100
Message-Id: <20220323175446.2777027-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220323104005.2a58a57c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20220323124353.2762181-1-alexandr.lobakin@intel.com>
 <20220323104005.2a58a57c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net 0/2] ice: avoid
 sleeping/scheduling in atomic contexts
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Shiraz Saleem <shiraz.saleem@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jakub Kicinski <kuba@kernel.org>
Date: Wed, 23 Mar 2022 10:40:05 -0700

> On Wed, 23 Mar 2022 13:43:51 +0100 Alexander Lobakin wrote:
> > --
> > Urgent fix, would like to make it directly through -net.
> 
> You may want to use three hyphens, two hyphens mean footer.
> Email clients gray those out, it's easy to miss :)

Good to know, thanks! :)

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
