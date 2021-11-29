Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 077C7461D40
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Nov 2021 19:00:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8878760754;
	Mon, 29 Nov 2021 17:59:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9HhJNQk4OwgQ; Mon, 29 Nov 2021 17:59:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D14A60747;
	Mon, 29 Nov 2021 17:59:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 961B31BF267
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 17:59:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 916F560747
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 17:59:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XSLhtaJKvV0B for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Nov 2021 17:59:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D3B136064A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Nov 2021 17:59:53 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 64887CE13A6;
 Mon, 29 Nov 2021 17:59:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64B30C53FAD;
 Mon, 29 Nov 2021 17:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638208789;
 bh=pumOr14SEPuRBt4uFWVYENXsSXCvMX8ziKVxmo5xBfQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ljWYAYQP39OtkEqvelwN4RGRumXcn8bIzjhIhdrQWo9PFETfjQSWyyqPfuOgwinsg
 9RP2UD47S6P7EKbs7jVKEK9qo6B5kv6dPTco8vxVzjxmOFtcxmvv+0mbfEY/panLQ8
 tqg5agUhFatdwcgdpgvDu216qnVXXNWhlJ9f7f0PKC2c86FzdxUdAGFgkSMRLdKFhw
 OThRoaFL7/SE/xchi0tb+OXUaIFkqUQelCZoUi5aS1gyta3c1G5CA5FZGx0bbDX5d9
 doAtTFnUzv4ZPDTznPoRwqkAo49BiIWzyvnPruavGyeSVqPoZzjEmhc8CQE1zYEfTV
 KnEjlTfwtbwZQ==
Date: Mon, 29 Nov 2021 09:59:47 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Hayes Wang <hayeswang@realtek.com>
Message-ID: <20211129095947.547a765f@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211129101315.16372-381-nic_swsd@realtek.com>
References: <20211129101315.16372-381-nic_swsd@realtek.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH 0/4] r8169: support dash
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
Cc: netdev@vger.kernel.org, nic_swsd@realtek.com,
 intel-wired-lan@lists.osuosl.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 29 Nov 2021 18:13:11 +0800 Hayes Wang wrote:
> These patches are used to support dash for RTL8111EP and
> RTL8111FP(RTL81117).

If I understand correctly DASH is a DMTF standard for remote control.

Since it's a standard I think we should have a common way of
configuring it across drivers. Is enable/disable the only configuration
that we will need?

We don't use sysfs too much these days, can we move the knob to
devlink, please? (If we only need an on/off switch generic devlink param
should be fine).
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
