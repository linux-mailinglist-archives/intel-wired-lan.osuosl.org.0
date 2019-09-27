Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A42C099A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Sep 2019 18:30:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3930420478;
	Fri, 27 Sep 2019 16:30:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fOvIBABqkA8C; Fri, 27 Sep 2019 16:30:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DBBDF227E1;
	Fri, 27 Sep 2019 16:30:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E77A21BF9AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 16:30:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E196788072
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 16:30:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gUtOKGkHF+MZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Sep 2019 16:30:46 +0000 (UTC)
X-Greylist: delayed 00:07:49 by SQLgrey-1.7.6
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E235B8804A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 16:30:45 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id r22so2401710lfm.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Sep 2019 09:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=72Xx/EPPWYiryTjo7oGMmMO60iIhf9Bs3K+zVKrMlYM=;
 b=K2fYHH5tHgERH2O9gXMlW6xBMHYpjgCDHzDJg63t1VY0HlKK7ffP/WSR1F6YNVYWk9
 /N3o8ZkQX/gr+uc4HXGLSTVlbfF/zttbKaEQFmOkwtEFm6zOA9OSww7k/X/qriVdp+TL
 FO69x5K0EF8nO1U/P/OVCJj5B67T2lAde2CWyFrW58MMoA2/kYaE6KKlB5GKRDZH+/Lq
 8TOYvh9ukt+2fCjcTF0U+HaXWLA4BL9eK1MG1s+On/3LODKLTxBQmK/5RkSda7b+zMnH
 LesoiLTEpBSN8Ys9Pf3Ip2pV4hOh3o6/WBHCNR4OUTgGbchs3Ef62e8KpYIY3Cmrd1bP
 aOoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=72Xx/EPPWYiryTjo7oGMmMO60iIhf9Bs3K+zVKrMlYM=;
 b=NoE8Mlm1N9d4eufNTTZ5F8r4zMfhAV+f4z4WR4AcPN54Zy3KqRQwApMw5my8O6M3b1
 UHLCpl4KTVvkQlGtr0uvSU42vvX+56S5OvM42A0IPlAqsyAeJ0OW+Hma2r+dB7ot9V1z
 LApe+BWBeT+q+xDV9R8rp/8ojQUxe4182HUs9nRF/LKX8e7sWo0o1hLywysEA8mNrC7r
 U4zmZ8GwNBtySZM2vKBdhC81ztt0Fb4AROQSELGFjYWmSWBMY/2OXv42sF6zwX+UMFzy
 UjSEcVBrfU6tVzAvV+Lg1iWWLyFdc9yn0ChrsqSkZAvr2S5evgsFZXTFhg0MIYDGy0fL
 Ad1A==
X-Gm-Message-State: APjAAAWBoRhDC8o+3+/084YPS40QOm0x1SUZS3QLgprSPhVgCUfokLsI
 1nJ5A0IeqK39jG2bD8nTngXzXA==
X-Google-Smtp-Source: APXvYqw/VwjjLJwOtnuav0hbuYBwMD28yqDNG67ORkmJSS8A7GzF3jq+LztNLzWWH7CqXVbB+VkQRw==
X-Received: by 2002:a19:c14a:: with SMTP id r71mr3349013lff.55.1569601374823; 
 Fri, 27 Sep 2019 09:22:54 -0700 (PDT)
Received: from wasted.cogentembedded.com
 ([2a00:1fa0:8df:57d9:464d:c6f1:f498:da95])
 by smtp.gmail.com with ESMTPSA id k16sm558137lje.56.2019.09.27.09.22.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 27 Sep 2019 09:22:54 -0700 (PDT)
To: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org
References: <20190926181109.4871-1-jacob.e.keller@intel.com>
 <20190926181109.4871-8-jacob.e.keller@intel.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <a08e6e28-bc98-a103-0577-a0bb45f950d5@cogentembedded.com>
Date: Fri, 27 Sep 2019 19:22:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20190926181109.4871-8-jacob.e.keller@intel.com>
Content-Language: en-MW
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 09/26/2019 09:11 PM, Jacob Keller wrote:

> Fix the renesas PTP support to explicitly reject any future flags that
> get added to the external timestamp request ioctl.
> 
> In order to maintain currently functioning code, this patch accepts all
> three current flags. This is because the PTP_RISING_EDGE and
> PTP_FALLING_EDGE flags have unclear semantics and each driver seems to
> have interpreted them slightly differently.
> 
> Cc: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>

[...]

MBR, Sergei
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
