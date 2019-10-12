Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F0DD51AA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Oct 2019 20:36:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B84785EE9;
	Sat, 12 Oct 2019 18:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FQe8h8B6mEg6; Sat, 12 Oct 2019 18:36:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 96F2585EF3;
	Sat, 12 Oct 2019 18:36:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 88E331BF28C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 80DE385886
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:36:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IDSJFVNHB0eL for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Oct 2019 18:36:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 02A07855A1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:36:35 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id u12so6010185pls.12
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 11:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=awS0hdb260yU0YkzCeDNHWedy6Tr1IDerWF3RmG7BWI=;
 b=XKcvhQ3O5u7U6dds/rkN0xc9BCq4KaCQfdfaYu0O6jK8WMgujEnYM4vURRao/7nWcg
 vluX3zDrqNu2dG4zU17j3dNDrsILjvum3u0A0ZeWFprxJGEzfg+qrsYidaX8tvIARfrd
 FfbngAtNAkhSdJFaK9vARAy3HRKEnQo9YKCQuCbClhz2k8XSw5w31gREeCiBjUHAgJpM
 k0O9yuce3VW9XTwFatJMge+vsXIyGkc+2ny8MqaXFRLOFvRdhm7z/wyw8kNSdTcGD9cs
 81wQtwGLvHrjkf8AkcHdyyUONDSHlpqrA5XZtYkuXaqgN5V1jgHkB6FnyGQXrSzXiNWo
 ozMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=awS0hdb260yU0YkzCeDNHWedy6Tr1IDerWF3RmG7BWI=;
 b=fhyxfmLnUhSd+LDH9QRjn1EMxOCbt+O2i3mseVseOIusz9om4EB0cLrAheu136MOE4
 C1f5IF1X9qRrcEjlwCPu6VlLttU0sm62IJL4bYL0mcjoLVKc82JbWdVlVGi78V30JKWN
 EiQextr5TacGxpulevdWl7uwYJ0ZGM36JP9wzWmPiI3wxyBRcjz0SieChcsECBEbI45k
 pKM+BJToDjtqF6o0wScfZiphbn2KDOprTQkkjadK+O4SwcvkOJzdVPY6l+FdLXUSQuyH
 k8YMDkqk9B7S4qUoDO0JfUZhuJwzhCW3xdv96n4Ishn6gptT0zxPf0rnmVGCymrgePej
 vY3g==
X-Gm-Message-State: APjAAAXWTl3jxZZ7ViGny3J6KbBE+VW96SNdurAPkJ5Vci1FgLsEIE1Y
 Ske8NLfbNV21K1HFqwB1cN3h2YB9
X-Google-Smtp-Source: APXvYqyV29gIc4I0YbQIa0W8bKMTNTDS4z28ICFwPt8HL54wZ2aVyBO536qH/w5s7LeCKzOWCbi3fg==
X-Received: by 2002:a17:902:8ecb:: with SMTP id
 x11mr21694380plo.234.1570905395546; 
 Sat, 12 Oct 2019 11:36:35 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id q132sm12873341pfq.16.2019.10.12.11.36.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:36:34 -0700 (PDT)
Date: Sat, 12 Oct 2019 11:36:32 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20191012183632.GG3165@localhost>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20190926181109.4871-7-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926181109.4871-7-jacob.e.keller@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [net-next v3 6/7] mlx5: reject unsupported
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
Cc: netdev@vger.kernel.org, Eugenia Emantayev <eugenia@mellanox.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Feras Daoud <ferasda@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 26, 2019 at 11:11:08AM -0700, Jacob Keller wrote:
> Fix the mlx5 core PTP support to explicitly reject any future flags that
> get added to the external timestamp request ioctl.
> 
> In order to maintain currently functioning code, this patch accepts all
> three current flags. This is because the PTP_RISING_EDGE and
> PTP_FALLING_EDGE flags have unclear semantics and each driver seems to
> have interpreted them slightly differently.

I'm not 100% sure what this driver does, but if I'm not wrong it
follows the dp83640:

  flags                                                 Meaning
  ----------------------------------------------------  --------------------------
  PTP_ENABLE_FEATURE                                    Time stamp rising edge
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE                    Time stamp rising edge
  PTP_ENABLE_FEATURE|PTP_FALLING_EDGE                   Time stamp falling edge
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE|PTP_FALLING_EDGE   Time stamp falling edge

> Cc: Feras Daoud <ferasda@mellanox.com>
> Cc: Eugenia Emantayev <eugenia@mellanox.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Richard Cochran <richardcochran@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
