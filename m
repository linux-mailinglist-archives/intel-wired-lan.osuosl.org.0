Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E849A1A6315
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2020 08:36:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6EE6C85C04;
	Mon, 13 Apr 2020 06:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OqK+Omkip9aP; Mon, 13 Apr 2020 06:36:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58F6F85CD5;
	Mon, 13 Apr 2020 06:36:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 587201BF46D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 06:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4F10B87347
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 06:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sQ2uotFhyLCa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2020 06:36:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D07F686FBB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 06:36:00 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id s63so4346718qke.4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Apr 2020 23:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KMpw6K79lA/hKqIcCn2kKRSspiTDXkb2D8JjBGFr8zQ=;
 b=uz5+521nlHBocaytihEXa/MzRtF6lSl6OnhByj/4tYGgzxMgsJepipn9S0nNQZMDJz
 P9ee2v+EOPvrZl1stRWdTm9Of9V5vQioB7DSLHUIFvX8TZX3V1LKRUTYZ0fERav4znaL
 ZQk7orz6i9h4g6ZzPYHczp93XiJ1euMZ2rulHWmEGDtfoxa4CRd/aewcwaAEHQdI75YQ
 umHMLAFnEEzpJsCqD/LGFB7rPxGqxW9NBs//tY0mSGGrX1NmQJq+BRbg3orUyls6Eq5f
 nMjVM/Z+9Tvx9dFxQHWvQGH1c63oXgjcGODdQ7gvgZTD0bQCB1/tpNBC/EHYReMxxX+J
 oKMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KMpw6K79lA/hKqIcCn2kKRSspiTDXkb2D8JjBGFr8zQ=;
 b=ftDkupgfEnFduYWl/iDjG8WbolvTF1HEk0a7Sh6I1XpJHaylQuCrp+yB9J/t1oYcKc
 EeLps+gchSJvPCVhrluYs+nRmg9cxzx8yqR0TfBptrehcRHefVM0+LZ1tqXveQXKmkrp
 TZyEjXpVKNnhhwXBH6yuobEZbFL6UxIy+Q52u3lhEdOcoHF+CmMYjzYluaYo6yhkRgT5
 bj+wbltRdQtAEjDYidqS3wstTPlNdplo7BT65OIt4IxMCfKfiBvnrMkBUIPYIENtibkh
 8tUTywXOnKq4IwUo3vPnpvk0bRZ7NdvwkEPOEmE//V8q066yinV1cNnmM+5dmqiUlrHx
 HF1w==
X-Gm-Message-State: AGi0PubnojTs+aCeM62qnYOnLiYbya4WVf5uTtTJRbJaWmBTZbIpiiM1
 iD6rFkF2BphVFaTIBn0qh+y1RFoj8wMkhfedtZc=
X-Google-Smtp-Source: APiQypLAkeIgbG9vE5BMPoUzyd5dJuTAeNpXUZF1UwhH8UT1xsBlzhBm3dFEKEbDE+I8yBJb7oDCmyFUzPvyYPBCdUQ=
X-Received: by 2002:a37:ac6:: with SMTP id 189mr952703qkk.60.1586759759747;
 Sun, 12 Apr 2020 23:35:59 -0700 (PDT)
MIME-Version: 1.0
References: <1888197.j9z7NJ8yPn@kreacher> <5092680.jloV5Ae5OO@kreacher>
In-Reply-To: <5092680.jloV5Ae5OO@kreacher>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Sun, 12 Apr 2020 23:35:48 -0700
Message-ID: <CAL3LdT71aa3NfqoGTvmz-XzS7Ng=LqpwPROWyf=w_+PyvEET-w@mail.gmail.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [Intel-wired-lan] [PATCH 5/7] PM: sleep: core: Rename
 DPM_FLAG_NEVER_SKIP
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
Cc: Hans De Goede <hdegoede@redhat.com>, Linux PM <linux-pm@vger.kernel.org>,
 Linux PCI <linux-pci@vger.kernel.org>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI-devel <dri-devel@lists.freedesktop.org>,
 Linux ACPI <linux-acpi@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alan Stern <stern@rowland.harvard.edu>, Ulf Hansson <ulf.hansson@linaro.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 10, 2020 at 9:03 AM Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
>
> From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
>
> Rename DPM_FLAG_NEVER_SKIP to DPM_FLAG_NO_DIRECT_COMPLETE which
> matches its purpose more closely.
>
> No functional impact.
>
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Acked-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

For the driver changes to e1000e, igb and igc.

> ---
>  Documentation/driver-api/pm/devices.rst    |  6 +++---
>  Documentation/power/pci.rst                | 10 +++++-----
>  drivers/base/power/main.c                  |  2 +-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c    |  2 +-
>  drivers/gpu/drm/i915/intel_runtime_pm.c    |  2 +-
>  drivers/gpu/drm/radeon/radeon_kms.c        |  2 +-
>  drivers/misc/mei/pci-me.c                  |  2 +-
>  drivers/misc/mei/pci-txe.c                 |  2 +-
>  drivers/net/ethernet/intel/e1000e/netdev.c |  2 +-
>  drivers/net/ethernet/intel/igb/igb_main.c  |  2 +-
>  drivers/net/ethernet/intel/igc/igc_main.c  |  2 +-
>  drivers/pci/pcie/portdrv_pci.c             |  2 +-
>  include/linux/pm.h                         |  6 +++---
>  13 files changed, 21 insertions(+), 21 deletions(-)
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
