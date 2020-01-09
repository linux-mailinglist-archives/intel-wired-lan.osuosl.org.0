Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3120A13538C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 08:12:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA9CD85F71;
	Thu,  9 Jan 2020 07:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GRAcirP3eOpc; Thu,  9 Jan 2020 07:12:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E26585F0B;
	Thu,  9 Jan 2020 07:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8623C1BF25B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 07:12:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 82586862D2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 07:12:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5BmfNxjqNDKv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 07:12:39 +0000 (UTC)
X-Greylist: delayed 00:07:33 by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BC847847BE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 07:12:38 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id p17so1588581wmb.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Jan 2020 23:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=46+ynsaDS/hEbXLBiyXFHvaKMRvB9JIQ5ONGN8owdAY=;
 b=om4RGcDUHzMs1QHCQ3csAqDlIcKgwsnsT/FzoIvVSP779EYjElklos5cMoppOr7zbv
 gLVTjW3w2vO0mOSn66TklJ5FP/eUwF7s4vuT9A9bg0jkGv6OrgOvJJqJ0UPjjYPITaS2
 oZW7ar73Hn0odOcGxN9TlhABcr5zCDs4RQzsP2Cmt7QvaJRUCGbODXK49htSAoEumMWm
 4qJ1oyUe2Z+fBnQLflDwm4n5oHcg8lj4EbT/69wDOfDK0/j0Im3lcfWFoi10SF+serAI
 n7SvfTN5z9qdVHisyx8mmSISCV14PlBfJf3NIAUHrB7amnoDDphnrsJ/tR8jmp0vTYTn
 ynJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=46+ynsaDS/hEbXLBiyXFHvaKMRvB9JIQ5ONGN8owdAY=;
 b=GlG04stxmNId0RC04T4qM9SOpiugkh2MrWU+gCsWO5c4ua45ZgAMA54mCroJHJGWEQ
 aw1laDtnudvKJS6RJrPqvDyDYgg0JhBfK5Wsxj3QYez2Lc5ryrvoVlE3eZUMqOn8/LHt
 LK7d8Thu/yByUB1/nzeF/AS9yJl24VrMuJ319Evs+4e3AaZNWFMsyNfqhjiIq/A7EWFQ
 ohnz1l9IG6tMy5LceTkrMGrGrDtHxemV/EtPmQkHPMVLVaKWCLrknKDaezt5aHUXiXjk
 PfpM8fDixuklCHoUnJqGNn2Ms65IVhiKJ/plQZOm/vyYxmgVsA8sNx5WRtLRePEhrpVq
 cmYw==
X-Gm-Message-State: APjAAAWVKNf+s0fGEtiSF1ppleN7ab91ksJK82VcW1gNBL4z2sAkBIv9
 OhWjy5ZaB4enYGFh5S+lxNhS9nJTVvc=
X-Google-Smtp-Source: APXvYqx0cylayRbM0ANGFwMfL7zkujHXETPawOgsY6jAhdXy7BpAtn2+Xn91dAkt6FdWO1evUq4CZQ==
X-Received: by 2002:a7b:cb0d:: with SMTP id u13mr1163551wmj.31.1578553503930; 
 Wed, 08 Jan 2020 23:05:03 -0800 (PST)
Received: from localhost (jirka.pirko.cz. [84.16.102.26])
 by smtp.gmail.com with ESMTPSA id a16sm7078496wrt.37.2020.01.08.23.05.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 23:05:03 -0800 (PST)
Date: Thu, 9 Jan 2020 08:05:02 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20200109070502.GC2235@nanopsycho.orion>
References: <20200109010818.1326575-1-jacob.e.keller@intel.com>
 <20200109010818.1326575-4-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109010818.1326575-4-jacob.e.keller@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 3/4] devlink: add support for
 triggering snapshots from userspace
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

Thu, Jan 09, 2020 at 02:08:18AM CET, jacob.e.keller@intel.com wrote:
>Currently, devlink region snapshots are captured by the driver at some
>internal trigger. There is no standard method for userspace to request
>that a snapshot be created.
>
>For some use cases of regions, this is acceptable. The snapshots only
>make sense if taken in response to some internal driver event.
>
>However, regions could be used for other purposes. For example, a driver
>might export a region that represents the contents of some portion of
>the device flash. In this case, there is no event that triggers
>a snapshot. Instead, it makes sense for user space to request a snapshot
>in some manner.
>
>Currently, drivers must implement such a trigger through an out-of-band
>mechanism. The netdevsim driver does this through a debugfs file.
>
>Create a standard interface for requesting snapshots via a new devlink
>command: DEVLINK_CMG_REGION_TRIGGER_SNAPSHOT.
>
>At region creation time, drivers may optionally define
>a trigger_snapshot function callback. If not defined, the
>DEVLINK_CMD_REGION_TRIGGER_SNAPSHOT will simply report EOPNOTSUPP.

Similar mechanism is already implemented for health reporters. Why that
wouln't work for you?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
