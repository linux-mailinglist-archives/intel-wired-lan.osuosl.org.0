Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A47D519D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Oct 2019 20:29:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C792C8833C;
	Sat, 12 Oct 2019 18:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gtyA8O4pBruD; Sat, 12 Oct 2019 18:29:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 37972884A7;
	Sat, 12 Oct 2019 18:29:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A60A31BF28C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:29:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 920422034C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:29:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zlbhWLKDp-ux for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Oct 2019 18:28:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id D8F4B20119
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:28:59 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id d26so7662477pgl.7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 11:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Z4e8uk0IpJRuBvJTEmmHHew7MLg0EsYSSDTpP3A/9+4=;
 b=iBunLz7JASh89AWFZIk7A5IHq7gsj6GjImlSoTPCT3vOBudn43qAGTACNLrrT5q6dv
 SJS1eOyqGr3up6VzVDntE219I1IQKZm7yoxtu15mT6/U8rIBxS1Wy6MmWDINzsjYCzPe
 aRUwZ+hsdLNuqZI70NF+RP2bJtCn3/stnovTf2YWv6hzoHnLYwXbQSb5GRqM8Ca014Lp
 vPzd0b4h625wXdBUF1ujxR5qZaWRPF2qIAl4PDJuPsS0kqt8AeeoCErGOBoSlk7ng8HY
 of799EiVo7DrG9PE2vBgnYB6z0/ybj9JCCO9s/Z7eUgfbn5f0krql3ZeaZWI2sl/Xd18
 Jdtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Z4e8uk0IpJRuBvJTEmmHHew7MLg0EsYSSDTpP3A/9+4=;
 b=rsNWfAp4K5L44nmJPLlLCS/sisuL82ZjlSl6iu6SGtus5ICz2buKwmkGiaWpbJp22E
 InxWNQR7L0JDpZWUhcPwz+B+bzjDUMMDRv4Du9mwPjv1pZMEqtdBBoXqr1nizhbhDxc9
 8diM9KknWWDst0b9UNjBBYmBRzN/lKeRyTvvllwG6ZNGgcf3w65ir4vYpg9jAs+Ooup/
 0ahEA/czw7fydWKGKYZsm0/gbuQBu0W07KbUrQPBuS4gOWhjprWxSp/TQIyICw1AiDl9
 MzMD4cj6I1Tv0wyopPhi+KloFsuF+ag3mf+Ee8zzEuaS+PcfTK4tLr1SDfytYgDH37Iw
 M1PA==
X-Gm-Message-State: APjAAAUooBgV0zPZ/JXKk5smIS2CI8fzYsH9+aPq7KFtNSy6URaUtV3v
 crvMkdy2Yyf3XMkQ8/sbod3VYkh2
X-Google-Smtp-Source: APXvYqwgEMPBAKLKkFmQRtfgnKkLQ/Pr0iqazWs7tkIKlVJoQBvtK8C38EfeWfafmOqSL/+dzgE0Vw==
X-Received: by 2002:aa7:9f47:: with SMTP id h7mr23836748pfr.44.1570904939557; 
 Sat, 12 Oct 2019 11:28:59 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id b4sm9661956pju.16.2019.10.12.11.28.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:28:58 -0700 (PDT)
Date: Sat, 12 Oct 2019 11:28:56 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20191012182856.GE3165@localhost>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20190926181109.4871-5-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926181109.4871-5-jacob.e.keller@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [net-next v3 4/7] dp83640: reject unsupported
 external timestamp flags
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
Cc: netdev@vger.kernel.org, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Stefan =?iso-8859-1?Q?S=F8rensen?= <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 26, 2019 at 11:11:06AM -0700, Jacob Keller wrote:
> Fix the dp83640 PTP support to explicitly reject any future flags that
> get added to the external timestamp request ioctl.
> =

> In order to maintain currently functioning code, this patch accepts all
> three current flags. This is because the PTP_RISING_EDGE and
> PTP_FALLING_EDGE flags have unclear semantics and each driver seems to
> have interpreted them slightly differently.

This driver has:

  flags                                                 Meaning            =
       =

  ----------------------------------------------------  -------------------=
------- =

  PTP_ENABLE_FEATURE                                    Time stamp rising e=
dge
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE                    Time stamp rising e=
dge
  PTP_ENABLE_FEATURE|PTP_FALLING_EDGE                   Time stamp falling =
edge
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE|PTP_FALLING_EDGE   Time stamp falling =
edge
 =

> Cc: Stefan S=F8rensen <stefan.sorensen@spectralink.com>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Richard Cochran <richardcochran@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
