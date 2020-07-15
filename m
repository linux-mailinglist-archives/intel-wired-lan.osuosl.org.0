Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE13F22163D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2020 22:31:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2272B89ECE;
	Wed, 15 Jul 2020 20:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U5uuV5eKGZj1; Wed, 15 Jul 2020 20:31:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 90AF389ED0;
	Wed, 15 Jul 2020 20:31:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E8CC1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 20:31:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 088A987D5D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 20:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jyx2lDCl2zDS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2020 20:31:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 894CE87D41
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 20:31:38 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 205AD20657;
 Wed, 15 Jul 2020 20:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594845098;
 bh=so0mjZo5EN3Fs3hltCxxYnhvqCY33YwzANRxSMGZ/mg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=K50rbXvzgwYZE8UcvdbShAbebDj0NSPl3KfvpM/rT4c8JrrZhGlhNvKHhowjNXuy3
 zclU8EQCz01RBzGp9HLHR+eKJRkzlaEBA9VQvJh8sV96ATyhXMPCy+/l5FPDvQwM5m
 GKc6Forf1P7Cox0k6xQJ+2Ppsj7VW/03/7Lgj6XQ=
Date: Wed, 15 Jul 2020 13:31:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ian Kumlien <ian.kumlien@gmail.com>
Message-ID: <20200715133136.5f63360c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAA85sZua6Q8UR7TfCGO0bV=VU0gKtqj-8o_mqH38RpKrwYZGtg@mail.gmail.com>
References: <CAA85sZvKNXCo5bB5a6kKmsOUAiw+_daAVaSYqNW6QbSBJ0TcyQ@mail.gmail.com>
 <CAA85sZua6Q8UR7TfCGO0bV=VU0gKtqj-8o_mqH38RpKrwYZGtg@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] NAT performance issue 944mbit -> ~40mbit
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
Cc: Linux Kernel Network Developers <netdev@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 15 Jul 2020 22:05:58 +0200 Ian Kumlien wrote:
> After a  lot of debugging it turns out that the bug is in igb...
> 
> driver: igb
> version: 5.6.0-k
> firmware-version:  0. 6-1
> 
> 03:00.0 Ethernet controller: Intel Corporation I211 Gigabit Network
> Connection (rev 03)

Unclear to me what you're actually reporting. Is this a regression
after a kernel upgrade? Compared to no NAT?

> It's interesting that it only seems to happen on longer links... Any clues?

Links as in with longer cables?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
