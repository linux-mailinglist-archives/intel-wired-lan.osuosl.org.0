Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C651353A8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 08:24:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2FF9E203D6;
	Thu,  9 Jan 2020 07:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HX7Vg8HV+WcP; Thu,  9 Jan 2020 07:24:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7A4712048C;
	Thu,  9 Jan 2020 07:24:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 32EF71BF25B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 07:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 27D3585DC1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 07:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A3Px6BCpIlTA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 07:24:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1988A8561D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 07:24:01 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id c14so6167491wrn.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Jan 2020 23:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=WBbhaBKQdw8G0anb2bwjbSFLEjz889g2eEjcjQquTJc=;
 b=WPVERb4VzuFvt5ZufJeFIf58zraID0aMffDdTU1N/e99QkN5b8IkWoKf2lJJ8i4bHm
 IuKBS7jRONekpf6Gh1uwf7CFIXowHu08cyOYvFmePBz0K4rv0Za62dxGZhMXuDxx02OG
 XMUWh1xrqeU5VsFw5XHEfiscnGanCLyIhS/DqgI5gwPiWNfhGMfNm71O8vZPapSgbAHH
 qnxzUrkOqBpCkTNb8JgpVsnc736Fm05GKvkJcjBkF+dSvP+GTtku7Un2fNCZZrYV3DdB
 WnR4MpXt8vwX2lgnQ0eqlxrnG2maQ2bb8xZxT0jZ+n32bxC0/I3a/xUBbQqqdZz5oJVC
 l9cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WBbhaBKQdw8G0anb2bwjbSFLEjz889g2eEjcjQquTJc=;
 b=rPX5j0tOoTH0vHXjUMYJLkhkYIfa99J4WG0VgdVPfselFdxrqiUEg/DYineqGZPT5V
 gONaSeUTlEvC8kgCVGT3HrHhZ9QMKap4lDyoy+mzEjG5m2pezB1qOCDTlYaBenR9x6v1
 GR/AHtOu9qAQYT8fOc2nmsJXud8RfBk9k/Yfh3uK2VLeXh9MBZMSFNe41AcwQCwyWnSX
 4956x42XurAFQqWtE9If9NiFWWoq6fkFc+phPQR6FYQq/8r0AZK0dhAQ/ByQmtEyN6T8
 eABlxnloca63l6DaRafD1cttY0VVLrlT9qD6TeWGn2RzOFzIzU2DLOEH6XBsx26HeAr1
 2Shw==
X-Gm-Message-State: APjAAAWEZmxol0ZhbsdXk20dDclLiERt3Y9t0ivRLuoYodFsMvLS1UPZ
 COFWV3oZnj/mIR6s7WVvAXJLp9QwGtc=
X-Google-Smtp-Source: APXvYqxvYSCRhY8IYbNaQgL1BvIXNffnq9lsezCKhoEPOZC45RJa6cWA/ieJ4nhuzTtHk9NxqoZjqQ==
X-Received: by 2002:a5d:558d:: with SMTP id i13mr9125122wrv.364.1578553253114; 
 Wed, 08 Jan 2020 23:00:53 -0800 (PST)
Received: from localhost (jirka.pirko.cz. [84.16.102.26])
 by smtp.gmail.com with ESMTPSA id x7sm6644096wrq.41.2020.01.08.23.00.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 23:00:52 -0800 (PST)
Date: Thu, 9 Jan 2020 08:00:51 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20200109070051.GA2235@nanopsycho.orion>
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

Thu, Jan 09, 2020 at 02:08:15AM CET, jacob.e.keller@intel.com wrote:
>This series consists of patches to enable devlink to request a snapshot via
>a new DEVLINK_CMD_REGION_TRIGGER_SNAPSHOT.
>
>The netdevsim driver is modified to support the new trigger_snapshot
>callback as an example of how this can be used.
>
>There is also some fix ups for s/shapshot/snapshot/ in documentation
>and the devlink_snapshot_id_get function.

You can already trigger health reporter dump from userspace. Why don't
you use health reporter?


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
