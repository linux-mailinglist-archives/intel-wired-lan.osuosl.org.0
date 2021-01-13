Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C932F4FB7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Jan 2021 17:19:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B48C87264;
	Wed, 13 Jan 2021 16:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IbPZOIIsvxBL; Wed, 13 Jan 2021 16:19:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E96387283;
	Wed, 13 Jan 2021 16:19:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 247DD1BF59D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 16:19:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2069B86644
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 16:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DIJGrVlv-9z8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Jan 2021 16:19:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
 [209.85.166.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6B4A186610
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 16:19:45 +0000 (UTC)
Received: by mail-io1-f52.google.com with SMTP id q1so5223355ion.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 08:19:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xEPkDwVE9RtnXuRxHoTlrHwQitE78zqBqfATtPtI1UA=;
 b=lJA9CNNPtgcXrhTIrSypuNObSP77MJyUlIs+QKRmtu6gHJFeanhw7/XaGr1Li3VKM/
 2yCbgcMfPHpPI3G1PeAD1jpUQ+96vgLiIIR+QVg8E3pfe+dMhiBJeKCFKPMecJhKJ95U
 Q++il9AlFfG6tfd1+wT+5KpXpy1ijYMgJ9bk5iY9NY/2ZGJg4aUIvRn4VqOwk4nCRTnc
 4cituXjcaVGPSitOWCJmUz1AAUOiDUWwxClPaetj6euOMmgnjr+KsPJ9wuaw4hro77r9
 Vk1wQnKl2it8TmgG9X6J5aecv0zsd5jDu/N8ddROK4Dhbl83CqOcr7XFDzmNcghEtsXZ
 oIAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xEPkDwVE9RtnXuRxHoTlrHwQitE78zqBqfATtPtI1UA=;
 b=EnS3CDUz049G4VnXBWJkw7dEKcXXhibPwulhF5fz5R5RuPeAraDP69h+M5YcgkrxfL
 825BSDVSzIuKRDU02J/yE78SNC/ylB8PXEOv3IbPPa4nrtglqVrNBTnGsfHv+BtTbeJw
 w0Rfbi8uUMHstX8byXHmuz1BTle+HTO/OIQAI43qMEobIXV+fV8ikCmDyzs6Wa6JnV5i
 AB1sejYTW+2CuievyHrBbEQiu06Xd5NmD4a8o4GQ7vGxwcuaBnUPJQRXsZmmWh37mX7u
 090CXhUH+K+2epKjLjKdZNDXqSDa1OuijNfUQeZTQmw201KNIn6DDC1U+BZ3/0yL8kow
 Hq4A==
X-Gm-Message-State: AOAM532sdWzmMyNfT2dNnUctYS7X2RPSbFsAX+215Jn2YU6YO8qxZfOs
 FLQGAJiit6jyXeBjFOlu4dsLWejlDPnWUu1bsWg=
X-Google-Smtp-Source: ABdhPJxtJRbIJ8rd/8KvVO/iH5cbcBfYsiysK0as6sV3To8TfXWO5sRlItdFgSWDvRgjVvpZBzOs4sIWpJhBmTutzKc=
X-Received: by 2002:a6b:d007:: with SMTP id x7mr2367487ioa.88.1610554784721;
 Wed, 13 Jan 2021 08:19:44 -0800 (PST)
MIME-Version: 1.0
References: <1610538220-25980-1-git-send-email-lirongqing@baidu.com>
In-Reply-To: <1610538220-25980-1-git-send-email-lirongqing@baidu.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 13 Jan 2021 08:19:33 -0800
Message-ID: <CAKgT0Udh8_m=MpDLsWfAeWh2uvFq4ksJ=00e8zMB-v7=P4XLMg@mail.gmail.com>
To: Li RongQing <lirongqing@baidu.com>
Subject: Re: [Intel-wired-lan] [PATCH][v2] igb: avoid premature Rx buffer
 reuse
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
Cc: Netdev <netdev@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 13, 2021 at 3:47 AM Li RongQing <lirongqing@baidu.com> wrote:
>
> Igb needs a similar fix as commit 75aab4e10ae6a ("i40e: avoid
> premature Rx buffer reuse")
>
> The page recycle code, incorrectly, relied on that a page fragment
> could not be freed inside xdp_do_redirect(). This assumption leads to
> that page fragments that are used by the stack/XDP redirect can be
> reused and overwritten.
>
> To avoid this, store the page count prior invoking xdp_do_redirect().
>
> Longer explanation:
>
> Intel NICs have a recycle mechanism. The main idea is that a page is
> split into two parts. One part is owned by the driver, one part might
> be owned by someone else, such as the stack.
>
> t0: Page is allocated, and put on the Rx ring
>               +---------------
> used by NIC ->| upper buffer
> (rx_buffer)   +---------------
>               | lower buffer
>               +---------------
>   page count  == USHRT_MAX
>   rx_buffer->pagecnt_bias == USHRT_MAX
>
> t1: Buffer is received, and passed to the stack (e.g.)
>               +---------------
>               | upper buff (skb)
>               +---------------
> used by NIC ->| lower buffer
> (rx_buffer)   +---------------
>   page count  == USHRT_MAX
>   rx_buffer->pagecnt_bias == USHRT_MAX - 1
>
> t2: Buffer is received, and redirected
>               +---------------
>               | upper buff (skb)
>               +---------------
> used by NIC ->| lower buffer
> (rx_buffer)   +---------------
>
> Now, prior calling xdp_do_redirect():
>   page count  == USHRT_MAX
>   rx_buffer->pagecnt_bias == USHRT_MAX - 2
>
> This means that buffer *cannot* be flipped/reused, because the skb is
> still using it.
>
> The problem arises when xdp_do_redirect() actually frees the
> segment. Then we get:
>   page count  == USHRT_MAX - 1
>   rx_buffer->pagecnt_bias == USHRT_MAX - 2
>
> From a recycle perspective, the buffer can be flipped and reused,
> which means that the skb data area is passed to the Rx HW ring!
>
> To work around this, the page count is stored prior calling
> xdp_do_redirect().
>
> Fixes: 9cbc948b5a20 ("igb: add XDP support")
> Signed-off-by: Li RongQing <lirongqing@baidu.com>

Looks good.

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
