Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E76B0F287
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 14:49:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E93E660F11;
	Wed, 23 Jul 2025 12:49:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UcyKK22bd1Pa; Wed, 23 Jul 2025 12:49:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38E2A60F12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753274973;
	bh=9DSypuQ94NOqOu/J7FtQYG9QrH+9oWSjdUDYnY+z7fU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qyK+kgEzlUjV3VRo/WL3LxjcQNnz4T5dGMSO8RaAcBvqQaBEKuaHRw2Ej6X7UVs9Q
	 YSvfmEsIxXdXJyQJ4ptAjLxKU9fA4kNXUJa8EhmyZhzNNxETRrNoRRkhG4kjX2bP8G
	 QsIYOVbEinJsbEvuHlfAWQW0XEoCx/xVrTIzhcEBfQhp3Ha9lRzUa5Eiz0VefsdnAM
	 O0HzQ4//fXFLHIVxMFxAxWA2PYBO49xZB1dgwhajZW2EfXagnd2/Lfyyp8WJRmtrnQ
	 9KVMLHeng36Ar5TIWw1PaYlU1SpMaG7x6KAi+WrLeTWFbOn5OmV+p55beTT2Fz/jUa
	 ic2ziJxJ10dTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38E2A60F12;
	Wed, 23 Jul 2025 12:49:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D1DCCDA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 12:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B8D0F60F0C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 12:49:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JewYjmuO5J8h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 12:49:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A889160F07
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A889160F07
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A889160F07
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 12:49:30 +0000 (UTC)
X-CSE-ConnectionGUID: +iS5M67WTfSkuwAoEJYE7w==
X-CSE-MsgGUID: ZmzGiCXMQBSlNXcfSHbVCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="66987743"
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="66987743"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 05:49:30 -0700
X-CSE-ConnectionGUID: US+X/B+KQiW1H6RezBwV0A==
X-CSE-MsgGUID: j70Ib76qQiSgVJTiNZONKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,333,1744095600"; d="scan'208";a="163992831"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2025 05:49:29 -0700
Date: Wed, 23 Jul 2025 14:48:17 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com
Message-ID: <aIDaET+R4p+FQdNP@mev-dev.igk.intel.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
 <2hgukyjbhhafp5zruf5yb5rjddmjsyo4hwjd5gyyuomuugr5wu@vrftn6sxn4yr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2hgukyjbhhafp5zruf5yb5rjddmjsyo4hwjd5gyyuomuugr5wu@vrftn6sxn4yr>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753274971; x=1784810971;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gE8760DYEPgX/ZZDL1cHPaepLzGsEIAzE/+xPF12xgw=;
 b=CuuTngFO0mtK30U0JeGfYDiIzh0siCO8+J2LZJihJpSeWIgJYch4IIU3
 pS8k1G45w7/kFaRDIOsGhISIXzfI5Z6ifZXBgP9cxpYq/mWEsDziqwV1j
 QjIomL2EEBABwsjL4dWeTuY46YF10kHaBmQMFJbZobn+IsaFLtpSHau+V
 PRGaAQnQInmI0RiVf07ty8n0iKYZUWpfQvWiNAf6yk5GA5fpduqv6wjoM
 v8VqK2feHcu+Z9h4tuEXDmRXC9YDKSQFnaAY95Z4uQ6HA9ZzQBRl2bfKj
 CPg2BeJZe76Mp2teJYZKDfx6wVlWNkk9nai0h/vMc5Jsif3o5HtQgWx2Z
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CuuTngFO
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 00/15] Fwlog support in
 ixgbe
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 23, 2025 at 02:12:56PM +0200, Jiri Pirko wrote:
> Tue, Jul 22, 2025 at 12:45:45PM +0200, michal.swiatkowski@linux.intel.com wrote:
> >Hi,
> >
> >Firmware logging is a feature that allow user to dump firmware log using
> >debugfs interface. It is supported on device that can handle specific
> 
> Did you consider using devlink health reporter for dumping this?

This is only moving already implemented code to the lib to reuse it in
another driver (which supports the same interface).

First implementation was added here [1]. And there was a discussion
about using devlink for it [2].

[1] https://lore.kernel.org/netdev/20230810170109.1963832-1-anthony.l.nguyen@intel.com/
[2] https://lore.kernel.org/netdev/fea3e7bc-db75-ce15-1330-d80483267ee2@intel.com/
