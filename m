Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CB72B2AE6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Nov 2020 03:57:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D3A2871F4;
	Sat, 14 Nov 2020 02:57:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vodDnMQIUcdj; Sat, 14 Nov 2020 02:57:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0512087492;
	Sat, 14 Nov 2020 02:57:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 335D51BF9CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Nov 2020 02:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2E09E87705
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Nov 2020 02:57:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vhU4KPvsYd4L for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Nov 2020 02:57:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8585787703
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Nov 2020 02:57:08 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id y22so5459391plr.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Nov 2020 18:57:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Y7PcyZ605gjOrpi73JwhlRzdDSnwawKE7lgwWDwY0Ro=;
 b=Hqw9Mg+aaiygTirEfZCJiA+t522Ga1uLgMtl8v8fuUZUKdA3mNuq4RFcuHS+Y50ZRj
 W1EtvR+sat++lIs3ej5mEU2zLyETftpP8KOKyHxU/Wy9SgxlDN8AV3XIu0klhdoP3W7O
 4csEt4aG5SgsWaN7cLCjyB5FiQEh2zNS4GhgG1CQBIrFSYC//7GHUWU8JKnuAHFUfBxg
 0BbDsMliqRNHsLi+OjqfsKGUZkR3jfzt9fzdSG0a5cEwByHbl8qwog/NzRCKjFdfj59g
 FTp8iIOlbE5qUTxjq5QJ0a346fu6MBuZSv9qhchrvsc8pEJJ4zaJt4AT0BbXtRi/hpQf
 AKdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y7PcyZ605gjOrpi73JwhlRzdDSnwawKE7lgwWDwY0Ro=;
 b=rjLgxHM7TWKLQ4daATPUNmqde0gOCsDWUSpSj+SQxGc4Br5aXDuMN8M8SZ5Ke7giTE
 SPIeknvMcF1HGDHmJmJsEhrrkiIYcG5trgUmQR2k3lmOVY8NUcZ6ycCtOjqUfrwP+xms
 cG57WJMUJElGTdtqm/FzP8oOuwgUWc/Sth5wyoW9vz4W8uMVBdqSPWm90FDglffh1im7
 sC36xEO34NM4lKisBUmYld67/MDCcZtuXwIUV8oJhoGRnZF7VpmP1wqb/KSWskGFkSfo
 FY5POz3ciQV8sxto7mPcfMZRfh7jj0NrjGTXlWtJK85o9evVFHhK5+wh/6YGIPzsQv20
 2C7Q==
X-Gm-Message-State: AOAM530uGPu3Jry4x+0wSoc7iKiU8fYfLR2VbhFQMLQl+Yhw+Jn1am1D
 3PDK0yjnkllrKPe7Fl31mJI=
X-Google-Smtp-Source: ABdhPJxtU/Xk5xwDndF5Gfxi0O0JqOfhnJKCFD8uF/l3T4kxY6E+uhI+OSxRhqSn8AaxP8+cxUpiCQ==
X-Received: by 2002:a17:90b:3648:: with SMTP id
 nh8mr5779223pjb.27.1605322628178; 
 Fri, 13 Nov 2020 18:57:08 -0800 (PST)
Received: from hoboy.vegasvil.org (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id n68sm10989716pfn.161.2020.11.13.18.57.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Nov 2020 18:57:07 -0800 (PST)
Date: Fri, 13 Nov 2020 18:57:04 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20201114025704.GA15240@hoboy.vegasvil.org>
References: <20201112093203.GH1559650@localhost> <87pn4i6svv.fsf@intel.com>
 <20201113032451.GB32138@hoboy.vegasvil.org>
 <87ima96pj1.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ima96pj1.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for PTP getcrosststamp()
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
Cc: andre.guedes@intel.com, linux-pci@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 13, 2020 at 11:10:58AM -0800, Vinicius Costa Gomes wrote:
> I am proposing a series that adds support for PCIe PTM (for the igc
> driver), exporting the values via the PTP_SYS_OFFSET_PRECISE ioctl().
> 
> The way PTM works in the NIC I have, kind of forces me to start the PTM
> dialogs during initialization, and they are kept running in background,
> what the _PRECISE ioctl() does is basically collecting the most recent
> measurement.

What is a PTM?  Why does a PTM have dialogs?  Can it talk?

Forgive my total ignorance!

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
