Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9A9D534D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 13 Oct 2019 01:27:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0BBBE86840;
	Sat, 12 Oct 2019 23:27:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vmpjSzh4xQv2; Sat, 12 Oct 2019 23:27:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 418CD86B33;
	Sat, 12 Oct 2019 23:27:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3A9C61BF427
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 23:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 34F0D87BA6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 23:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dikcwcmldDKt for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Oct 2019 23:27:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A525287B97
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 23:27:22 +0000 (UTC)
Received: by mail-pg1-f175.google.com with SMTP id i32so7881027pgl.10
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 16:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FhaLNSVkBA6Nck+9rg3UHafkeRh3UXEbIF9NNJwBTb4=;
 b=KQ3vtW1SBtGdmJAOXEKaPbq1v95F3Ed/n2zn+IlDUsq0heGp3PJ/TImZ4eEHYOxe1G
 5I/m+cpHOT2T/NvVHyvGD/BBpJGfZmJNvOWXcutPR9rQoPKJjgGVIV2yc/CbPrrM4ds1
 7B+vBPThV80F6RgfeljEhzZSynI0ZWP2Krh2573qqHZyXwtDXyl4PDljDN9uv86BOMIw
 7zyAyFVu8UtNCQpkxaz9I9UyaZx0tXfogsIelCEm4NHV/KbEKW2MNtPesHqAMKaRl90d
 GOfQWUnyF56rzvwlAkUzpJaSOjagc13zSyy/lWoMhCI+KZTMPp/sEKOc598nPb39ay+q
 /Ecw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FhaLNSVkBA6Nck+9rg3UHafkeRh3UXEbIF9NNJwBTb4=;
 b=FgCY8I8ncZAG+Cm0T4bxIyutFDrpbFJgMzDdLD7iEv6DGK1WWN1rULps8kfawI0xJV
 e3AQ3PcSe3PWrTQUpRMnm/k/JaJPUPcP2Wcn7tcJp1T6kxlzz8dBACZhqi2e34c8SDZ2
 cEKo67zImtPxhrwSLA2PZHxoA27+4S/fjtLqy1gUc1SpYFBaDkP0OiBakU6Aj52DqeUE
 Dj7OfezIzif5QVGe0TBgma0y0v38MDAm9IDB0OPkkBKivFzgRXD96r44baMCXkUNCe1p
 tvwo1KV1nQwn8ktieqGtkXm9mKpRajyZIsIYmd5CrjqpgAxzVX/T4vaFOBl0G/MKRJw2
 nlyA==
X-Gm-Message-State: APjAAAWq8pKQpvJ+NeDXIqKJrNlruaDzIBSOIoDfFljbfjVGEv2Hxt2z
 0Wa/qDZQC9Ima20SPlPYfME=
X-Google-Smtp-Source: APXvYqyEQjVxc4JdNjesWZEngUU/ht7ZHaflDjdTUZ46sllGO2CppnqtCzzXm/r724R6DOCKuieWuA==
X-Received: by 2002:a63:1718:: with SMTP id x24mr24409757pgl.180.1570922842191; 
 Sat, 12 Oct 2019 16:27:22 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id v1sm16651265pjd.22.2019.10.12.16.27.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 16:27:21 -0700 (PDT)
Date: Sat, 12 Oct 2019 16:27:19 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Message-ID: <20191012232719.GA7148@localhost>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20190926181109.4871-4-jacob.e.keller@intel.com>
 <20191012182409.GD3165@localhost>
 <02874ECE860811409154E81DA85FBB5896926B0B@ORSMSX121.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <02874ECE860811409154E81DA85FBB5896926B0B@ORSMSX121.amr.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [net-next v3 3/7] mv88e6xxx: reject
 unsupported external timestamp flags
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Brandon Streiff <brandon.streiff@ni.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Oct 12, 2019 at 07:36:31PM +0000, Keller, Jacob E wrote:
> Right, so in practice, unless it supports both edges, it should reject setting both RISING and FALLING together.

Enforcing that now *could* break existing user space, but I wonder
whether any programs would actually be affected.

Maybe we can add a STRICT flag than requests strict checking.  If user
space uses the "2" ioctl, then we would add this flag before invoking
the driver callback.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
