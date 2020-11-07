Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 193382AA638
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Nov 2020 16:28:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D1A5E85BC0;
	Sat,  7 Nov 2020 15:28:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z7e0xqRG95qR; Sat,  7 Nov 2020 15:28:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20153868A3;
	Sat,  7 Nov 2020 15:27:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A11371BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Nov 2020 15:27:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 99C8780AE1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Nov 2020 15:27:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Twvhf3vuK14s for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Nov 2020 15:27:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71E8B80ADE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Nov 2020 15:27:55 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CAF7206DB;
 Sat,  7 Nov 2020 15:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604762875;
 bh=heWSefAsDZPzshVFnemJkskUJeQCA4NFVaRtMdzoadg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ELrdIyf+d4FANoceDPQgJlZuDIEASgWf6RTu5W1TGRL10SFDBshCPOBCuxbeewQ4F
 dULzfUfmiHxMmLxAh5YkQYrfZxe2kv/mI/0FSUNlJTnN7zjkhYEdufdmq5KdPt7wNO
 d3WUmJeJUhdLSe3oGfXtM1/BhltQeF8XwbRcL/jk=
Date: Sat, 7 Nov 2020 16:28:27 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ben Hutchings <ben.hutchings@codethink.co.uk>
Message-ID: <20201107152827.GA90705@kroah.com>
References: <c21d1ef1ddb071eed868a96649b4edf0b61b4247.camel@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c21d1ef1ddb071eed868a96649b4edf0b61b4247.camel@codethink.co.uk>
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
 Luis Chamberlain <mcgrof@kernel.org>, intel-wired-lan@lists.osuosl.org,
 stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Nov 07, 2020 at 12:17:42AM +0000, Ben Hutchings wrote:
> Here are backports of some fixes to the 4.14 stable branch.
> 
> I tested the blktrace fix with the script referenced in the commit
> message.
> 
> I wasn't able to test the i40e changes (no hardware and no reproducer
> available).

Thanks for all of these, now queued up.

greg k-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
