Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA0D1FB50C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2020 16:53:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8417A8764C;
	Tue, 16 Jun 2020 14:53:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H5NtLwMjn8yE; Tue, 16 Jun 2020 14:53:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D84768773D;
	Tue, 16 Jun 2020 14:53:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F0821BF870
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 14:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9A5818937D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 14:53:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OTDe+l+r5iAd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2020 14:53:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F01D589357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 14:53:46 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id x11so3099029plo.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2020 07:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UoptLBBgAk/std92D5cqMRyl+scwvvQ9fYGAtvKkiyI=;
 b=R71t+nJNQ2Dd7ooQZUTFArV6914oWMKXYFLPE0IrHug8N99lM+lc8etWGAsw8eo0gG
 aUToVkUwR+VGxgmLsqmv78tDmENaxd04BJhlFIRmMmGVDTzbpnp9w0JefmoHmtqXIzyd
 Ts7sOaaWNUDNtNsXhwvHO8MV/AajsYtowQuCs6KM89/ryIUBmXOCA0tgf7biBfbrhCOj
 QFK/Lmh46KICRF8vdR/i+VHEbUE5Zul0J/PMj9Fkr+N2NluK7UMn5LX1t1Cs70+leqev
 YDSn5MwYjVtygxIUruou1uuo8FapWO3WJPxb12sLrY/PPdgWUCfKNrm7paDl+9lVzUIk
 vmkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UoptLBBgAk/std92D5cqMRyl+scwvvQ9fYGAtvKkiyI=;
 b=BUCwDPd/qA9TBLGZ1wBOKQHUqc0/VV5xQM7m5S+AZOAby/wNsXfERJMibVtWALlSAI
 C+yXNSg0G6nMzc0s0v20iDvKg4pIHUiR9rK38FO8OvQ5T0kd+3GSI/c0do5zdpBRJ7tK
 5VtEsQG5n+CoLo2VtjKJMGRol5FsLX3cL+VT5BXUGk8MEu7ntA4qzUdizibIfr+OWj8z
 a7Qjz6H+eleAHC69jUltPbFTApO7ntSeWHyHic9QlzmeMJF3N0R7/vGxiUOAW7xdIRda
 IiEjC+c4AnKMqSsC1dmMAF7Vg3HndUoq9LhKKSAmkVxohPFh1koSg4aVjimivGgGNKOL
 Amgg==
X-Gm-Message-State: AOAM530GgHT4QKiLHcod9lsjU10esblU7z77SNiHejUAVWXD5eQi9UnK
 Z45x9mUgFrZSD+gZoDeUNIA=
X-Google-Smtp-Source: ABdhPJycihT/ot/1nv31K2gqbVmj4sNnebfZ9RGjX+AIgMRHoaH3+MHJzTrk/ETFMJ0oTxejXtDACg==
X-Received: by 2002:a17:90a:39ce:: with SMTP id
 k14mr3184517pjf.39.1592319226546; 
 Tue, 16 Jun 2020 07:53:46 -0700 (PDT)
Received: from [10.1.10.11] (c-73-241-150-58.hsd1.ca.comcast.net.
 [73.241.150.58])
 by smtp.gmail.com with ESMTPSA id b5sm2850077pjz.34.2020.06.16.07.53.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 07:53:45 -0700 (PDT)
To: Greg Thelen <gthelen@google.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20200614061122.35928-1-gthelen@google.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <b88dc544-9f1b-75af-244e-9967ffeacf0e@gmail.com>
Date: Tue, 16 Jun 2020 07:53:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200614061122.35928-1-gthelen@google.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: add ifdef to avoid dead code
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/13/20 11:11 PM, Greg Thelen wrote:
> Commit e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME
> systems") added e1000e_check_me() but it's only called from
> CONFIG_PM_SLEEP protected code.  Thus builds without CONFIG_PM_SLEEP
> see:
>   drivers/net/ethernet/intel/e1000e/netdev.c:137:13: warning: 'e1000e_check_me' defined but not used [-Wunused-function]
> 
> Add CONFIG_PM_SLEEP ifdef guard to avoid dead code.
> 
> Fixes: e086ba2fccda ("e1000e: disable s0ix entry and exit flows for ME systems")
> Signed-off-by: Greg Thelen <gthelen@google.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Eric Dumazet <edumazet@google.com>

Thanks Greg
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
