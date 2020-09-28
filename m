Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EFE27B76A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 00:32:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB49E85BB5;
	Mon, 28 Sep 2020 22:32:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id asDO1oYtKvWw; Mon, 28 Sep 2020 22:32:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1EDE85BC8;
	Mon, 28 Sep 2020 22:32:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0E201BF278
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 22:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9887E870F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 22:32:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OoiMZzSFTTk5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Sep 2020 22:32:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CBA9086F8F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Sep 2020 22:32:27 +0000 (UTC)
IronPort-SDR: xUGuOqLe4y4kZTW45hRoryjcblRz9K43FT9NVXVMxFvntLqka1MUuE114DxWsR7YGiz3kaQJo5
 EJ6TaW2lFs4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="141478430"
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="141478430"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 15:32:26 -0700
IronPort-SDR: l1LXZVtDg3Pz6xFidwHb1+h8Lc9tmcugUaI8PZ8Ftp9x1S7NDK2APlag9o0GfwlFsjx8eY/3Ts
 SPh5GTyPAnJg==
X-IronPort-AV: E=Sophos;i="5.77,315,1596524400"; d="scan'208";a="457017844"
Received: from unknown (HELO ellie) ([10.254.6.151])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 15:32:25 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
In-Reply-To: <20200928215432.GA2499272@bjorn-Precision-5520>
References: <20200928215432.GA2499272@bjorn-Precision-5520>
Date: Mon, 28 Sep 2020 15:32:23 -0700
Message-ID: <87h7rhv8g8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 1/3] Revert "PCI: Make
 pci_enable_ptm() private"
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
Cc: andre.guedes@intel.com, linux-pci@vger.kernel.org, netdev@vger.kernel.org,
 bhelgaas@google.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Bjorn Helgaas <helgaas@kernel.org> writes:

> On Fri, Sep 25, 2020 at 04:28:32PM -0700, Vinicius Costa Gomes wrote:
>> Make pci_enable_ptm() accessible from the drivers.
>> 
>> Even if PTM still works on the platform I am using without calling
>> this this function, it might be possible that it's not always the
>> case.
>
> *Does* PTM work on your system without calling pci_enable_ptm()?  If
> so, I think that would mean the BIOS enabled PTM, and that seems
> slightly surprising.
>

At least it seems to work, yeah, the PTM related registers that I need
for cross timestamping still return valid results when I don't call
pci_enable_ptm().

Btw, I just noticed a typo in the commit message, will fix it for the
v2.

>> Exposing this to the driver enables the driver to use the
>> 'ptm_enabled' field of 'pci_dev' to check if PTM is enabled or not.
>> 
>> This reverts commit ac6c26da29c12fa511c877c273ed5c939dc9e96c.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>
> AFAICT we just never had any callers at all for pci_enable_ptm().  I
> probably shouldn't have merged it in the first place.
>
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
>

Thanks.

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
