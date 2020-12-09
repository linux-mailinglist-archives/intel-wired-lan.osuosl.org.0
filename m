Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EB62D4619
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Dec 2020 16:58:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 175E52038A;
	Wed,  9 Dec 2020 15:58:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8A+bhHPyPF5l; Wed,  9 Dec 2020 15:58:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E35D8204C7;
	Wed,  9 Dec 2020 15:58:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EFB21BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 15:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 09F3387318
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 15:41:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gzkPhQeFmpWF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Dec 2020 15:41:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f68.google.com (mail-oo1-f68.google.com
 [209.85.161.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 64B06872B2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 15:41:09 +0000 (UTC)
Received: by mail-oo1-f68.google.com with SMTP id i7so481275oot.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Dec 2020 07:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JKPWvTeOUAWWeTIgOEQ1k8P3eL2U5OpItcuMAQW7INo=;
 b=Hj1UiESjeBP5AmevOGTf6A/W9xJJvcS3eDm6cx5dIVkGB8z9kyiJU9VEWE62VFfK7l
 vi5RDj6WXNGqyogY0y/J23YIc9PVB+X/RLLaJsH4hgFHGmtGTcj838loYr7v45jPADEM
 c8pGvqNrHlcFVoS3KArXTLKNlihTDX8l3gtgkTN46MG2BnpFrAqK0oCeKwcEUKgBin8i
 Q/l7aeUKq4r6Cyh8RwFekPmwVh731B3bk5b7wYpETBZW5Yfy8qYasFeIpuj4hPOdnvJy
 udHwy3wRrb8ER4U6/yVFZTzkjTPA1vceeNB6oU60zxlcCA+2H3je1A4AF4ACJzA6XEo1
 lBTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JKPWvTeOUAWWeTIgOEQ1k8P3eL2U5OpItcuMAQW7INo=;
 b=DYq8ieIwaRQ+elIKA0nnU73FYQdcP9GGwo/tpIhb7VDid5LOK4RJjRIgpNniwbBa7t
 opwuD9TQG9OnmeEdP3AV9qabo74mlqxYMToInFIW5fnYHgl5v0X3ldhvfiKhKIRFYA3z
 radyTmTmZkqWXFX8Ed2jTZhJRmk0X0wtt526zuUg7VOKfKILPawU25+pVpJNBa1ChGIm
 JuJRZyugHfyu0q8ZXcWVyyJ8s1afsDuuP+bCwytrjVm3vnzktjAxp9lC/d69Bk374s9G
 hkLZ9C23SB/C/C+YeTaTA9g6EYb+3IOCFgqK1dFBfWD9+4iclUl/MNHAhyTSEKjvZHzw
 mCTA==
X-Gm-Message-State: AOAM530O81n8wAEL7ZJX845a9+6uDBwSc5sxaAjxqcUX0kpB42Gzi6N7
 NaJy+z3YHk6eAIMr3uOBLQw=
X-Google-Smtp-Source: ABdhPJyK21rORfCNf9dRwuUVrVhlTAdISKYwMWBuQTlPCNLLU+QgFl/G7zg79dKi4UhOwnu0HK/6fw==
X-Received: by 2002:a4a:9563:: with SMTP id n32mr2334087ooi.53.1607528468662; 
 Wed, 09 Dec 2020 07:41:08 -0800 (PST)
Received: from Davids-MacBook-Pro.local ([8.48.134.51])
 by smtp.googlemail.com with ESMTPSA id r25sm454194otp.23.2020.12.09.07.41.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Dec 2020 07:41:07 -0800 (PST)
To: Jesper Dangaard Brouer <jbrouer@redhat.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com> <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <20201207230755.GB27205@ranger.igk.intel.com>
 <5fd068c75b92d_50ce20814@john-XPS-13-9370.notmuch>
 <20201209095454.GA36812@ranger.igk.intel.com>
 <20201209125223.49096d50@carbon>
From: David Ahern <dsahern@gmail.com>
Message-ID: <e1573338-17c0-48f4-b4cd-28eeb7ce699a@gmail.com>
Date: Wed, 9 Dec 2020 08:41:05 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201209125223.49096d50@carbon>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 09 Dec 2020 15:58:32 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 1/5] net: ethtool: add xdp
 properties flag set
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/9/20 4:52 AM, Jesper Dangaard Brouer wrote:
>>> still load and either share queues across multiple cores or restirct
>>> down to a subset of CPUs.  
>>
>> And that's the missing piece of logic, I suppose.
>>
>>> Do you need 192 cores for a 10gbps nic, probably not.  
>>
>> Let's hear from Jesper :p
> 
> LOL - of-cause you don't need 192 cores.  With XDP I will claim that
> you only need 2 cores (with high GHz) to forward 10gbps wirespeed small
> packets.

You don't need 192 for 10G on Rx. However, if you are using XDP_REDIRECT
from VM tap devices the next device (presumably the host NIC) does need
to be able to handle the redirect.

My personal experience with this one is mlx5/ConnectX4-LX with a limit
of 63 queues and a server with 96 logical cpus. If the vhost thread for
the tap device runs on a cpu that does not have an XDP TX Queue, the
packet is dropped. This is a really bizarre case to debug as some
packets go out fine while others are dropped.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
