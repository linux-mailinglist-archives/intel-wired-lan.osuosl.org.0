Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EB53C8509
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 15:11:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7C3640593;
	Wed, 14 Jul 2021 13:11:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4_1yMpDxcMda; Wed, 14 Jul 2021 13:11:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 995E2405A9;
	Wed, 14 Jul 2021 13:11:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C62B1BF424
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 11:19:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5973960B41
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 11:19:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uMcbi3aGWFvm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 11:19:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D55E60B19
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 11:19:29 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id l1so2552925edr.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 04:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=t9BiriwpOcNEknMm/iM0jLz5+veRh3lTn49M6YjFIAg=;
 b=hlIl5a1YaVJjTVmyVNJnn1PWoxiuSvlzAUJuzged3kbs3f0MnU3O6thtTUDVgDi92h
 a6lVeKJkqp820ALDwGpl0U4ZoxAMjMn+acN9pcaGjCoFS1XYuXtgTSIiCcsOc/c7MsP8
 SV7Ic6lu7fje6N2E7q3i3Gdu7cHTbVqzUHZLBHfD0bbPc+hF+ZjxM+XZGWfRuzu9go1z
 z5rtou2E5Z9P1+P+XLCjbPmePtW3jjmWFaqHG8cW+A6CPjQ0Vuh7TsCvNw/S1tFCMBK5
 /BTyNdrp012ROvh3zA1ftXagejr6fJjP4/LUtc1mqDEBgzXR03Il/kL+LBMq1e71S5df
 9iLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=t9BiriwpOcNEknMm/iM0jLz5+veRh3lTn49M6YjFIAg=;
 b=NjBU4Am8AJih5vjUPF8J6iuXtyxXjk+MBnAFKVKe4j17X7NYOBfZR/S64V359Lmaro
 PRybg3xuDQXavMvN/NLElaSTt+kwtkqE4JB7dd+NJuNnEs0wb72To+6zM1CQq/ukdwdT
 5uSt1bfbpGmo9ncR3VaItfrJEAOW3QKlw87bessyzNUNZJ1vOSp83L/Hz0Bcm/0GKe93
 MC4NPbz84vymlLCSWi7M2nEFFpx1Hd6NNrakwKuQaZbwjbFmxXSKXP3ocdeE7mtzZky0
 /OOGAyrUmG6kI1vZBSnKwZOGXDKIQIjHx7zqQtWPZq7fakawnR1zYDf0W/94wyTw7hj2
 kQvg==
X-Gm-Message-State: AOAM532cwEx5qMXLc2BDVatJqT49lKDtt2fum7q4cnvUc7B6XHDkDR/p
 6GpzMMJ7yBdlFy81ehDChgY=
X-Google-Smtp-Source: ABdhPJyStSekdjayeUViGApOVQNa7pYq8yu4/35Q8QcMoWOA1JNSFYmBgCv5OylZFSiL/p6MZ/P2KA==
X-Received: by 2002:a05:6402:35d4:: with SMTP id
 z20mr13349613edc.138.1626261567652; 
 Wed, 14 Jul 2021 04:19:27 -0700 (PDT)
Received: from [192.168.0.108] ([77.127.114.213])
 by smtp.gmail.com with ESMTPSA id v16sm137541edc.52.2021.07.14.04.19.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 14 Jul 2021 04:19:27 -0700 (PDT)
To: Nitesh Narayan Lal <nitesh@redhat.com>, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-api@vger.kernel.org,
 linux-pci@vger.kernel.org, tglx@linutronix.de, jesse.brandeburg@intel.com,
 robin.murphy@arm.com, mtosatti@redhat.com, mingo@kernel.org,
 jbrandeb@kernel.org, frederic@kernel.org, juri.lelli@redhat.com,
 abelits@marvell.com, bhelgaas@google.com, rostedt@goodmis.org,
 peterz@infradead.org, davem@davemloft.net, akpm@linux-foundation.org,
 sfr@canb.auug.org.au, stephen@networkplumber.org, rppt@linux.vnet.ibm.com,
 chris.friesen@windriver.com, maz@kernel.org, nhorman@tuxdriver.com,
 pjwaskiewicz@gmail.com, sassmann@redhat.com, thenzl@redhat.com,
 kashyap.desai@broadcom.com, sumit.saxena@broadcom.com,
 shivasharan.srikanteshwara@broadcom.com, sathya.prakash@broadcom.com,
 sreekanth.reddy@broadcom.com, suganath-prabu.subramani@broadcom.com,
 james.smart@broadcom.com, dick.kennedy@broadcom.com, jkc@redhat.com,
 faisal.latif@intel.com, shiraz.saleem@intel.com, tariqt@nvidia.com,
 ahleihel@redhat.com, kheib@redhat.com, borisp@nvidia.com, saeedm@nvidia.com,
 benve@cisco.com, govind@gmx.com, jassisinghbrar@gmail.com,
 ajit.khaparde@broadcom.com, sriharsha.basavapatna@broadcom.com,
 somnath.kotur@broadcom.com, nilal@redhat.com, tatyana.e.nikolova@intel.com,
 mustafa.ismail@intel.com, ahs3@redhat.com, leonro@nvidia.com,
 chandrakanth.patil@broadcom.com
References: <20210713211502.464259-1-nitesh@redhat.com>
 <20210713211502.464259-15-nitesh@redhat.com>
From: Tariq Toukan <ttoukan.linux@gmail.com>
Message-ID: <c2d794bf-20b4-95fa-dfba-e85cf6b74bd4@gmail.com>
Date: Wed, 14 Jul 2021 14:19:20 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210713211502.464259-15-nitesh@redhat.com>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 14 Jul 2021 13:10:50 +0000
Subject: Re: [Intel-wired-lan] [PATCH v3 14/14] net/mlx4: Use
 irq_update_affinity_hint
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/14/2021 12:15 AM, Nitesh Narayan Lal wrote:
> The driver uses irq_set_affinity_hint() to update the affinity_hint mask
> that is consumed by the userspace to distribute the interrupts. However,
> under the hood irq_set_affinity_hint() also applies the provided cpumask
> (if not NULL) as the affinity for the given interrupt which is an
> undocumented side effect.
> 
> To remove this side effect irq_set_affinity_hint() has been marked
> as deprecated and new interfaces have been introduced. Hence, replace the
> irq_set_affinity_hint() with the new interface irq_update_affinity_hint()
> that only updates the affinity_hint pointer.
> 
> Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
> ---

Thanks for you patch.
Reviewed-by: Tariq Toukan <tariqt@nvidia.com>

Tariq
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
