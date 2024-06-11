Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5871F903F71
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 17:01:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B6E560A5E;
	Tue, 11 Jun 2024 15:01:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1oROlU79Dsfy; Tue, 11 Jun 2024 15:01:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 551C860907
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718118071;
	bh=O4gOBUJvmTfawnxlPqLh0lGFdlrkZrWleiRA5I3LA7I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M66PP3LFFm1h/hva6Cv3oOEXTkY/2h9HANuy9hHSxRb5/TpT3+vSXPfEwfbUdgtE8
	 s9HIsO0ahDLWk4ipq9LjMDdqO69CC8LKFgk4n0oG5sae51PqBD/YadJE7kFhwEycJj
	 rm8af6rGhLrk+XJnp/c2rJMh2VA4K/kkUF2nUHtADFLeyayq895Le5ssnuTgNJ52vN
	 0kevptu6m6N7H+kKjcCyMu4l4U6Hnj+Mm5s9VIRZBCTnVwVpbWjRY/xQVoyZwjXD06
	 BF+7PPZqyJc0HkBvTzbNYWWhHUY+9qlF1MjcOsoWvhwMf7Qzvl9RAD7EE1QxcaHGs2
	 SAd8ioTsDg3wg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 551C860907;
	Tue, 11 Jun 2024 15:01:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B29F91BF312
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E95840359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:44:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 91C_2zADorvN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 13:44:19 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=sakari.ailus@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8E34A40305
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E34A40305
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8E34A40305
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 13:44:19 +0000 (UTC)
X-CSE-ConnectionGUID: RRCg0NhhS7CZTILx510YPA==
X-CSE-MsgGUID: QrD/rVbfS4+EpRtH4h1yNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14622286"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="14622286"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:44:18 -0700
X-CSE-ConnectionGUID: Q0NPPKiNQ7ane9wZalYhdQ==
X-CSE-MsgGUID: U69eDlhwT8qu912gTuRt5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39373309"
Received: from turnipsi.fi.intel.com (HELO kekkonen.fi.intel.com)
 ([10.237.72.44])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:44:11 -0700
Received: from kekkonen.localdomain (localhost [127.0.0.1])
 by kekkonen.fi.intel.com (Postfix) with SMTP id CFDB711F855;
 Tue, 11 Jun 2024 16:44:07 +0300 (EEST)
Date: Tue, 11 Jun 2024 13:44:07 +0000
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <ZmhUp-UclZkvQLqE@kekkonen.localdomain>
References: <20240611130103.3262749-7-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240611130103.3262749-7-gregkh@linuxfoundation.org>
X-Mailman-Approved-At: Tue, 11 Jun 2024 15:01:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718113460; x=1749649460;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=EQYSCqQXeZZSe0ClprwCP48eVWRMSRk0A6GlSCKcSkc=;
 b=cZknBu9P+p21+5gFCFvzPznRjdWrG6G7sGDFmzLQOF2gzQA7uSOhpi4O
 j2ELm3fdJnVuMMAW9FzIz7z91OHgw4j8sOD35DR1qcXzKyHD6IMkmI1NP
 wthilk/wLqRnJLxJXEibbfqf5nbXdYBdKMoJeEerceAle22AZ6DISM1p2
 792fugFlovustzFPTJWfI7KXcuDsUXylWSFD/5bf4gkYgioJXzKaYekaf
 +SqG+GfPjSFYQWYy5j0q0taOtVzpDglyH+nQ0H3Esoq0Tn0BooVXuPRVw
 c4Mcz0SndajF53UVFN7BSq7XTcGvqOFu8E+eOznDHACj0loAkKa16prgj
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cZknBu9P
Subject: Re: [Intel-wired-lan] [PATCH 1/6] auxbus: make to_auxiliary_drv
 accept and return a constant pointer
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 Dave Ertman <david.m.ertman@intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Bard Liao <yung-chuan.liao@linux.intel.com>,
 sound-open-firmware@alsa-project.org, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 Takashi Iwai <tiwai@suse.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-sound@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Bingbu Cao <bingbu.cao@intel.com>,
 Jaroslav Kysela <perex@perex.cz>, Michael Chan <michael.chan@broadcom.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>, netdev@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Tariq Toukan <tariqt@nvidia.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Greg,

On Tue, Jun 11, 2024 at 03:01:04PM +0200, Greg Kroah-Hartman wrote:
> In the quest to make struct device constant, start by making
> to_auziliary_drv() return a constant pointer so that drivers that call

s/z/s/

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com> # drivers/media/pci/intel/ipu6

> this can be fixed up before the driver core changes.
> 
> As the return type previously was not constant, also fix up all callers
> that were assuming that the pointer was not going to be a constant one
> in order to not break the build.

-- 
Kind regards,

Sakari Ailus
