Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D373D3E53
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jul 2021 19:16:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFB9660A4B;
	Fri, 23 Jul 2021 17:16:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pPWyQJ6rAqY7; Fri, 23 Jul 2021 17:16:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E094D6063F;
	Fri, 23 Jul 2021 17:16:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 742BF1BF306
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jul 2021 17:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 69C316063F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jul 2021 17:15:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sn1unV4A5NTB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jul 2021 17:15:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F45C6063B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jul 2021 17:15:17 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id j1so3156130pjv.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jul 2021 10:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=1JRQTcX3mMh1waCjD0i+OlhIQ+cqEnYe3rn2a3l5PHM=;
 b=fuyiDiQjakWS2nH4pRbhmN0vOH7iHesdh4D0ObiX/uzKRN2NGR36bRa2dK3XV5MoCB
 MF2oe1U9kR27iEcDG04IxZgok7Fl/zd/c/dd5N+NWdc+/FP8qErhBWQgFVxV/kacXjtR
 MW97Lzdlillv+7K1LoQJ0cF1Fsa/SpLtv4nLdMvwGWjtKMGwD5LG5wH/mn/3Xi0n32kC
 c0vWuSpHvKoI/lxg7aonDUu5M4Of5KBg/EIlg2IdY8DeaRsIoKlWMEyCsi+JsNs4aiuE
 3RKapUFqYN+qrfiH5r+peINoRzEVVMSuk5Z4MzafvYrrZjXGxeLRGzxA0RPx8VHr1CYo
 OsIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1JRQTcX3mMh1waCjD0i+OlhIQ+cqEnYe3rn2a3l5PHM=;
 b=btFPTWUgQZ3oG7Dk1DrPw+Kej6O8ndRk3g37vwvdSoCnj0vbNpYXBxE9x0LF77GAkA
 +pEttJUsAfmcmRsZifd7A6aVt0xvhID2QYmqjniQaSgwekv3W1L/aqTKfSP1XJ9wrEa7
 80coCQlyofr/MNTzo1BUzqLvOLN4VoJznffRK1RPJzMcLWYBfwxHSTRm9n1jtdRR1Uqb
 QqTXDh0+mxQOkfyH13RKYwQ/o3PLfVGRYLUG6mWpapifWNKxx7PtdSP2+Uqh8mIB6vrK
 ob15krGYymlJwI2uHRO1HGLe/wSlmmhYNvmktOxngb6De8p101Wm8vJ9Pcui4dtltOhk
 Vtvg==
X-Gm-Message-State: AOAM531b4MMwU3IeW6gD918HWKrWY2fHl+mzETHaEvzbJp6207dX3V7D
 o9loV9Vsy4z7Bx9Ufglgxlw=
X-Google-Smtp-Source: ABdhPJwN1doRO2qvePYhlCrAXf76ZIjgkkW/wHSr9Esk/6YIZFVgz0Xh5Y/B/+lplVHFrsi8hABTrw==
X-Received: by 2002:a62:30c5:0:b029:31e:fa6d:1738 with SMTP id
 w188-20020a6230c50000b029031efa6d1738mr5326632pfw.55.1627060516543; 
 Fri, 23 Jul 2021 10:15:16 -0700 (PDT)
Received: from [10.69.44.239] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id k198sm36382052pfd.148.2021.07.23.10.15.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Jul 2021 10:15:16 -0700 (PDT)
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
 chandrakanth.patil@broadcom.com, bjorn.andersson@linaro.org,
 chunkuang.hu@kernel.org, yongqiang.niu@mediatek.com, baolin.wang7@gmail.com,
 poros@redhat.com, minlei@redhat.com, emilne@redhat.com, jejb@linux.ibm.com,
 martin.petersen@oracle.com, _govind@gmx.com, kabel@kernel.org,
 viresh.kumar@linaro.org, Tushar.Khandelwal@arm.com, kuba@kernel.org
References: <20210720232624.1493424-1-nitesh@redhat.com>
 <20210720232624.1493424-12-nitesh@redhat.com>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <f1512e42-f2fa-b4e7-4133-4a6066b7ea0d@gmail.com>
Date: Fri, 23 Jul 2021 10:15:12 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210720232624.1493424-12-nitesh@redhat.com>
Content-Language: en-US
X-Mailman-Approved-At: Fri, 23 Jul 2021 17:16:25 +0000
Subject: Re: [Intel-wired-lan] [PATCH v5 11/14] scsi: lpfc: Use
 irq_set_affinity
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

On 7/20/2021 4:26 PM, Nitesh Narayan Lal wrote:
> The driver uses irq_set_affinity_hint to set the affinity for the lpfc
> interrupts to a mask corresponding to the local NUMA node to avoid
> performance overhead on AMD architectures.
> 
> However, irq_set_affinity_hint() setting the affinity is an undocumented
> side effect that this function also sets the affinity under the hood.
> To remove this side effect irq_set_affinity_hint() has been marked as
> deprecated and new interfaces have been introduced.
> 
> Also, as per the commit dcaa21367938 ("scsi: lpfc: Change default IRQ model
> on AMD architectures"):
> "On AMD architecture, revert the irq allocation to the normal style
> (non-managed) and then use irq_set_affinity_hint() to set the cpu affinity
> and disable user-space rebalancing."
> we don't really need to set the affinity_hint as user-space rebalancing for
> the lpfc interrupts is not desired.
> 
> Hence, replace the irq_set_affinity_hint() with irq_set_affinity() which
> only applies the affinity for the interrupts.
> 
> Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> ---
>   drivers/scsi/lpfc/lpfc_init.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 

Looks good. Thanks

Reviewed-by: James Smart <jsmart2021@gmail.com>

-- james

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
