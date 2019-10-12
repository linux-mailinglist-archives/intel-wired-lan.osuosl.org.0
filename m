Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30637D51AE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Oct 2019 20:38:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D798C86C7B;
	Sat, 12 Oct 2019 18:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O77h4-htxSkE; Sat, 12 Oct 2019 18:38:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4749587618;
	Sat, 12 Oct 2019 18:38:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 955F81BF28C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8FBC92047A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J+rPDyV7Ty3Q for <intel-wired-lan@lists.osuosl.org>;
 Sat, 12 Oct 2019 18:38:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id E5FE820031
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 18:38:41 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id y5so8018845pfo.4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 12 Oct 2019 11:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PYJCvQia0pn4Uc7MYvqlTl+JKad8tbHNffACvYNGz9k=;
 b=YbFafwXaQ3e0aSJl0kgMctLeYZPOsrSQjxl56JS30OWHSP1NSxgbiGOrDMiFOwYNuZ
 b1O51nEZwhxzI/m5b/0a4cm8VvNn/XH/v1qM8d2KlXlULmlHli+GXdvIbAXbuwEPOeRP
 LZFuHSujK0UAQUOqRW+CdnMgKoBCoOzxc5uZddQDne1PO73QI6j9kqwPufrR0WHn8BMW
 evBmHUrJzf07RNFa9b1VH+L9pth8y3B7TjlGhpXG+7UAmBj3+AAHG8wqPbvzOaMuf6Gv
 qyZDsr7XE3Jr6m/5a1ym0qytgJlh6U6zWBW3werw5y63Jeff9N1ky+WHocxSkA/XMNp5
 uyrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PYJCvQia0pn4Uc7MYvqlTl+JKad8tbHNffACvYNGz9k=;
 b=Qh0BJxrN5LJDSOI+LcyEgfclhqO4ZDvcz6iV7MIavGrJd0XJQq3OAdMiuKyVvduSDD
 arqx7iWIr4h/75RsW1QLqlBZt5QGf3BLVmxl8gga7uOysm40yFvTySAEyfriZU38qA2t
 Zf1YmEZLfnfimMJXNQKhOPtGzooP1jcAC5kkOPrSn8Ox/CImZitMnRsdLGgxYqbmN9Bi
 df+GRskdB2nF1YoGlzu9LL2Cy3P8rWfS4K9121MVUOM78Id0XshAn9Iij2ScW5Viz2OS
 EtkDuza6er9loDSPKKjwWFsoZjZbi/fBfVw9atO5WB72RtyBwHAQ/AbLW3BnRU5tx2bX
 RTMA==
X-Gm-Message-State: APjAAAVXdbVub2TkQRbvgvV3pUQT0iwTUJDY421EM8klTZzrH7I05EuS
 uD6gMinB1gyjI9ufnnvRikFPdNTS
X-Google-Smtp-Source: APXvYqxNZ5AE78NYtuWPWCUTwQXLUEEZRD3IU/B1BrgDlp+FNfncY4JUODYEU2TuVO9Id2nKGvrIDQ==
X-Received: by 2002:a63:10d:: with SMTP id 13mr24138034pgb.173.1570905521475; 
 Sat, 12 Oct 2019 11:38:41 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id z29sm13559880pff.23.2019.10.12.11.38.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:38:40 -0700 (PDT)
Date: Sat, 12 Oct 2019 11:38:38 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20191012183838.GH3165@localhost>
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20190926181109.4871-8-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926181109.4871-8-jacob.e.keller@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [net-next v3 7/7] renesas: reject unsupported
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
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 26, 2019 at 11:11:09AM -0700, Jacob Keller wrote:
> Fix the renesas PTP support to explicitly reject any future flags that
> get added to the external timestamp request ioctl.
> 
> In order to maintain currently functioning code, this patch accepts all
> three current flags. This is because the PTP_RISING_EDGE and
> PTP_FALLING_EDGE flags have unclear semantics and each driver seems to
> have interpreted them slightly differently.

This driver doesn't check the flags. Not knowing this HW, I can't say
which edges are time stamped.
 
> Cc: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Richard Cochran <richardcochran@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
