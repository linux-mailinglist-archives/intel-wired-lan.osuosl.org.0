Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 805E92AAA32
	for <lists+intel-wired-lan@lfdr.de>; Sun,  8 Nov 2020 10:12:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8544687245;
	Sun,  8 Nov 2020 09:12:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 01sTTRMm56bb; Sun,  8 Nov 2020 09:12:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D8CD87263;
	Sun,  8 Nov 2020 09:12:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A34771BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Nov 2020 09:12:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9318D87245
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Nov 2020 09:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wwpmMDwmBQHC for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Nov 2020 09:12:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 374D68708B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Nov 2020 09:12:18 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5689C206E3;
 Sun,  8 Nov 2020 09:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604826737;
 bh=l5TH/IiB4ZMtGMDD17XZfvw1OarDp6XUrNGO5YDQnUo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H9uYxRHIU9bBs1NCbZGwfxzYhsLo6PNxyYJiXIInHSfjwYFEJbp3Qz1Q4g2AgxpD/
 Aswnln9PcOQdR+BmdclH5R1pqO+BWus8tRfFRgvmJtT/hAKd/c4Xlf+vhhwKq6Kd+7
 pzuadumsk2MZrFeT35UnAEYdEfq8jEjcwVztaXII=
Date: Sun, 8 Nov 2020 10:12:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <20201108091214.GB44749@kroah.com>
References: <c21d1ef1ddb071eed868a96649b4edf0b61b4247.camel@codethink.co.uk>
 <20201107152827.GA90705@kroah.com>
 <CAB=NE6U=kTw_R+OkqLf0iT0Bwti8w=7RWjWgeQmVQssbZ4OL3w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB=NE6U=kTw_R+OkqLf0iT0Bwti8w=7RWjWgeQmVQssbZ4OL3w@mail.gmail.com>
Subject: Re: [Intel-wired-lan] [4.14] Security fixes (blktrace, i40e)
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
Cc: Sasha Levin <Alexander.Levin@microsoft.com>, Jens Axboe <axboe@kernel.dk>,
 Ben Hutchings <ben.hutchings@codethink.co.uk>,
 intel-wired-lan@lists.osuosl.org, stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Nov 08, 2020 at 03:04:14AM -0600, Luis Chamberlain wrote:
> I'd like some more time for this, to review on older kernels. Don't think
> it's the best yet

What is "this" and what is "the best yet"?  Which patch(s) here are you
referring to in your context-less top-post?  :)

thanks,

gre gk-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
