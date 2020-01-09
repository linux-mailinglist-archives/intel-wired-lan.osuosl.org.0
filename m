Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 892EC1360A1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 19:59:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1EC4E21563;
	Thu,  9 Jan 2020 18:59:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 88ouIFjMwYw3; Thu,  9 Jan 2020 18:59:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 68EC42154E;
	Thu,  9 Jan 2020 18:59:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 094291BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 18:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0553484AE3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 18:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sU7nSfOqOW5J for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 18:59:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9E7DF84525
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 18:59:36 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id t14so4015504wmi.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 09 Jan 2020 10:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FEA7pF17yjZwRGkVSkFCa6u9M6Z5SjmVXAtpBoowrk4=;
 b=gm2QQxLkBK7cvHUFYUrKHSqRfsIYhRim3ddnoZfP/PRW1YKWmT4ymVoCgfy5h8QT2N
 Wbn6Os9MmBpNuJoGWAXTBZLl3bT6hdKVWzmqFckPnPc9whT3sS/yDGaoq1ovvPCRrje8
 1wj+RiLn32oESpHcgxYdHm5wHFs9xJDqboqPN+kapSefCDx9bunhAdSBL52dOolyzRNl
 /NY7SUnCFsenkPr/7rArSd+5ywgL3RRgTw5c7XwFHEjDjuyNR2LkRk3bh4gBA8FPRzek
 /dtWJ1TbYsLTp++OWUBqOaHEMKS6LsHTpKHXoodthDjgp0AuN0AsAMBUp9/Mm6cgPJtY
 OG6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FEA7pF17yjZwRGkVSkFCa6u9M6Z5SjmVXAtpBoowrk4=;
 b=EEjW9jzpCX2kPk10VzO4csYcD5L1gzEvF6YLgV/g0qrmFnJ5ToYMjeTvQqmxn71sc1
 DOqCrxaUxRIgUIxv2BCNXxlFx/tlsOhXDYkNTubH+azQTe2HjKT8uAb6SUkt9bqNT+z9
 tjQ/ALYz/NvhvD27rWcAUVstWV3q17oSV8pTzUwRlTDA+ngmhh30Pi8XgMgljS7kV7c5
 jHvo5me6Uw7BM0M09/TMe7MF7TqXwOrQMc9FjpTlRrXy2Qkmi8vkDnEYoGf7D4HKVhs/
 UGDR2goeKrXU8VnOspwYvsDPTZJaWr0sn/hlLiog0X9sXdJpBzY4q3FV8YJtoesSUvAH
 ptSw==
X-Gm-Message-State: APjAAAVlo7OIBxxr1ZDeslYM/vgyeTpwtOGy6TgwBuO9+PRbzurgubkn
 P12fnsIVdeTabP00s8BqUH1OfQ==
X-Google-Smtp-Source: APXvYqxgecgOOOjhSK5IGjKOxwqV0CdLfYjVCpFIDUF7c+oCk4wst3W0x/pmZCOI/zbt/n9nxs8LWQ==
X-Received: by 2002:a1c:a949:: with SMTP id s70mr6384915wme.69.1578596375035; 
 Thu, 09 Jan 2020 10:59:35 -0800 (PST)
Received: from localhost (jirka.pirko.cz. [84.16.102.26])
 by smtp.gmail.com with ESMTPSA id u24sm3726948wml.10.2020.01.09.10.59.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 10:59:34 -0800 (PST)
Date: Thu, 9 Jan 2020 19:59:33 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20200109185933.GJ2235@nanopsycho.orion>
References: <20200109010818.1326575-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109010818.1326575-1-jacob.e.keller@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 0/4] devlink region snapshot triggering
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, valex@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hmm, could you send patchsets like this one to netdev mailing list?

Thanks!

Thu, Jan 09, 2020 at 02:08:15AM CET, jacob.e.keller@intel.com wrote:
>This series consists of patches to enable devlink to request a snapshot via
>a new DEVLINK_CMD_REGION_TRIGGER_SNAPSHOT.
>
>The netdevsim driver is modified to support the new trigger_snapshot
>callback as an example of how this can be used.
>
>There is also some fix ups for s/shapshot/snapshot/ in documentation
>and the devlink_snapshot_id_get function.
>
>Jacob Keller (3):
>  devlink: correct misspelling of snapshot
>  doc: fix typo of snapshot in documentation
>  devlink: add support for triggering snapshots from userspace
>
>The last patch is a patch to the iproute2 project to implement support for
>the new command.
>
>Jacob Keller (1):
>  devlink: add support for DEVLINK_CMD_REGION_TRIGGER_SNAPSHOT
>
> Documentation/admin-guide/devices.txt       |  2 +-
> Documentation/media/v4l-drivers/meye.rst    |  2 +-
> drivers/net/ethernet/mellanox/mlx4/crdump.c |  6 +--
> drivers/net/netdevsim/dev.c                 | 37 +++++++++++-----
> include/net/devlink.h                       | 14 +++---
> include/uapi/linux/devlink.h                |  2 +
> net/core/devlink.c                          | 49 ++++++++++++++++++---
> 7 files changed, 85 insertions(+), 27 deletions(-)
>
> devlink/devlink.c            | 20 ++++++++++++++++++++
> include/uapi/linux/devlink.h |  2 ++
> 2 files changed, 22 insertions(+)
>
>-- 
>2.25.0.rc1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
