Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9313E2C59
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 16:17:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83984607F9;
	Fri,  6 Aug 2021 14:17:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tCQPGwx7fg_1; Fri,  6 Aug 2021 14:16:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 73E1D606CC;
	Fri,  6 Aug 2021 14:16:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E738D1BF421
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 11:31:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E15144045A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 11:31:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=broadcom.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EFAaHupuMNCe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 11:31:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A3E85403A1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 11:31:45 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id k2so6611188plk.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Aug 2021 04:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DVzvOFQ1EMELE5VwTxfp8gJ3fXY0MK1GgMdY6S3I5RQ=;
 b=RMJKEhpO0XuACDivZR/ZyhrF5Y7mcmHTiRyP2atJ5j8qPhN3TsGATNufiJeWTuPw9i
 q0kBZgclFoh7SqK4eEwW/dFKyZpG/KOT5mAj3fd5nYQPR7EBpAuApcXB2EL0Lpp8Awya
 GNAxepk2eYiO6RHpIi61sQrdCbsadE+Mmgu7U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DVzvOFQ1EMELE5VwTxfp8gJ3fXY0MK1GgMdY6S3I5RQ=;
 b=P45lDCZekDZpNnWuH5tEtJx6Rp5CAz5XHKjxldwiZLxm/eFLzmNacWBQ0Ch14SOc2k
 IGVJRzp1qwQPLU/GKpKpZoj/F7+2+HasgRLbezPFGjRo7jMdOf/yeOr6d06/tTmMR1X6
 hVv9REWUR+c4HgjBDx61NvN0D0KaRmD8lZQL7pM1dK5BxOak9i0Icr2l2AXmhVWR4fZk
 MYjPX+Uoofh+kYmfK9haeB4Ek7zn8dUHE5zlAkfhLNuyi2fgT0B44p1Nu29hT4tcpf+J
 7BtEWr80LXVX+/WfisjoqM0wvD0tg//2jiZWmawx2Rv1e4vWhK45UpRAZcl1qpRu2mvl
 CNHw==
X-Gm-Message-State: AOAM530+156E1YgUz8erUvuUHyOvzMFuf6JiGvqHoQdMK6Ll4gL1vNu2
 aRRfqvYT0ZqpfnbqSJZvgAU/vvCxLllQpqPmZpp1/Q==
X-Google-Smtp-Source: ABdhPJzhCivQnMUOksiAttetSTcJXOtjmTzXvmHLDwVH/6STxIombyEykHE2elX3cpgDa8R/pgIyGruGpSmZKaALc+I=
X-Received: by 2002:a17:90a:2a8e:: with SMTP id
 j14mr20429914pjd.208.1628249504446; 
 Fri, 06 Aug 2021 04:31:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210720232624.1493424-1-nitesh@redhat.com>
 <20210720232624.1493424-5-nitesh@redhat.com>
In-Reply-To: <20210720232624.1493424-5-nitesh@redhat.com>
From: Sumit Saxena <sumit.saxena@broadcom.com>
Date: Fri, 6 Aug 2021 17:01:17 +0530
Message-ID: <CAL2rwxqz4dcjdbqtPMaCTud+3jPhuFvJeuVgt774Rpm-+_KJxQ@mail.gmail.com>
To: Nitesh Narayan Lal <nitesh@redhat.com>
X-Mailman-Approved-At: Fri, 06 Aug 2021 14:16:51 +0000
Subject: Re: [Intel-wired-lan] [PATCH v5 04/14] scsi: megaraid_sas: Use
 irq_set_affinity_and_hint
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
Cc: juri.lelli@redhat.com, ajit.khaparde@broadcom.com, jassisinghbrar@gmail.com,
 peterz@infradead.org, linux-pci@vger.kernel.org, viresh.kumar@linaro.org,
 _govind@gmx.com, james.smart@broadcom.com, mustafa.ismail@intel.com,
 govind@gmx.com, Tushar.Khandelwal@arm.com, minlei@redhat.com,
 ahleihel@redhat.com, mingo@kernel.org, sassmann@redhat.com, kabel@kernel.org,
 sfr@canb.auug.org.au, "Martin K. Petersen" <martin.petersen@oracle.com>,
 Linux SCSI List <linux-scsi@vger.kernel.org>, borisp@nvidia.com,
 maz@kernel.org, Sathya Prakash Veerichetty <sathya.prakash@broadcom.com>,
 Ewan Milne <emilne@redhat.com>, Kashyap Desai <kashyap.desai@broadcom.com>,
 tatyana.e.nikolova@intel.com,
 Chandrakanth Patil <chandrakanth.patil@broadcom.com>,
 intel-wired-lan@lists.osuosl.org, yongqiang.niu@mediatek.com,
 abelits@marvell.com, Nitesh Lal <nilal@redhat.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, chunkuang.hu@kernel.org,
 dick.kennedy@broadcom.com, faisal.latif@intel.com,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 frederic@kernel.org, robin.murphy@arm.com, rostedt@goodmis.org,
 rppt@linux.vnet.ibm.com, kuba@kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Somnath Kotur <somnath.kotur@broadcom.com>, shiraz.saleem@intel.com,
 ahs3@redhat.com, pjwaskiewicz@gmail.com,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 sriharsha.basavapatna@broadcom.com, nhorman@tuxdriver.com,
 Shivasharan Srikanteshwara <shivasharan.srikanteshwara@broadcom.com>,
 netdev@vger.kernel.org, mtosatti@redhat.com, kheib@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, tariqt@nvidia.com,
 stephen@networkplumber.org, poros@redhat.com, bjorn.andersson@linaro.org,
 Tomas Henzl <thenzl@redhat.com>, linux-api@vger.kernel.org,
 baolin.wang7@gmail.com, saeedm@nvidia.com, akpm@linux-foundation.org,
 jkc@redhat.com, jbrandeb@kernel.org, "David S. Miller" <davem@davemloft.net>,
 leonro@nvidia.com, benve@cisco.com
Content-Type: multipart/mixed; boundary="===============5786669938015504448=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============5786669938015504448==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000005aac6705c8e2613a"

--0000000000005aac6705c8e2613a
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 21, 2021 at 4:57 AM Nitesh Narayan Lal <nitesh@redhat.com> wrote:
>
> The driver uses irq_set_affinity_hint() specifically for the high IOPS
> queue interrupts for two purposes:
>
> - To set the affinity_hint which is consumed by the userspace for
>   distributing the interrupts
>
> - To apply an affinity that it provides
>
> The driver enforces its own affinity to bind the high IOPS queue interrupts
> to the local NUMA node. However, irq_set_affinity_hint() applying the
> provided cpumask as an affinity for the interrupt is an undocumented side
> effect.
>
> To remove this side effect irq_set_affinity_hint() has been marked
> as deprecated and new interfaces have been introduced. Hence, replace the
> irq_set_affinity_hint() with the new interface irq_set_affinity_and_hint()
> where the provided mask needs to be applied as the affinity and
> affinity_hint pointer needs to be set and replace with
> irq_update_affinity_hint() where only affinity_hint needs to be updated.
>
> Change the megasas_set_high_iops_queue_affinity_hint function name to
> megasas_set_high_iops_queue_affinity_and_hint to clearly indicate that the
> function is setting both affinity and affinity_hint.
>
> Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
Looks good.
Acked-by: Sumit Saxena <sumit.saxena@broadcom.com>

--0000000000005aac6705c8e2613a
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
GmgWG68YahkDuVSTTt2beZdyMeDwq/KifJFo18EkhcL3e7rmDAh8SniUI/0o3HX6hrgdmUI1wSdz
uIVL/m6Ok9mIl2U5kvguitOSC0bVaQPfNzlj+7PCKBECAwEAAaOCAdowggHWMA4GA1UdDwEB/wQE
AwIFoDCBowYIKwYBBQUHAQEEgZYwgZMwTgYIKwYBBQUHMAKGQmh0dHA6Ly9zZWN1cmUuZ2xvYmFs
c2lnbi5jb20vY2FjZXJ0L2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNydDBBBggrBgEFBQcw
AYY1aHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAw
TQYDVR0gBEYwRDBCBgorBgEEAaAyASgKMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8vd3d3Lmdsb2Jh
bHNpZ24uY29tL3JlcG9zaXRvcnkvMAkGA1UdEwQCMAAwSQYDVR0fBEIwQDA+oDygOoY4aHR0cDov
L2NybC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcmwwJAYDVR0R
BB0wG4EZc3VtaXQuc2F4ZW5hQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNV
HSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUNz+JSIXEXl2uQ4Utcnx7FnFi
hhowDQYJKoZIhvcNAQELBQADggEBAL0HLbxgPSW4BFbbIMN3A/ifBg4Lzaph8ARJOnZpGQivo9jG
kQOd95knQi9Lm95JlBAJZCqXXj7QS+dnE71tsFeHWcHNNxHrTSwn4Xi5EqaRjLC6g4IEPyZHWDrD
zzJidgfwQvfZONkf4IXnnrIEFle+26/gPs2kOjCeLMo6XGkNC4HNla1ol1htToQaNN8974pCqwIC
rTXcWqD03VkqSOo+oPP/NAgFAZVfpeuBoK2Xv8zYlrF49Q4hxgFpWhaiDsZUSdWIS7vg1ak1n+6L
3aHRY/lheSkOn/uJWXsqsTDp613hVtOTEDsHSQK32yTGr8jN/oRQgJASuUqQFdD4VzAxggJtMIIC
aQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQD
EyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwoQTpBmhDxj9JoN1ow
DQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEICClRGnU34JeOANfwPN09QLWPCxn3+Gr
domU4wk4bC65MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDgw
NjExMzE0NVowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCG
SAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQC
ATANBgkqhkiG9w0BAQEFAASCAQBG3ptR7Upgft8i48vuo/ts0G69CYpfWH2zO2uF54uh8SZqkYJL
U0de0L4D8+c2tHmSh2v7u6IUpPaCzizlubn7PHzYYOZ9n/kYVXDQx25YpaGa9VmcSFjTGXToXpZV
VDb7sq/b1TNYdcUF+NGdVdN3hRMG9CmgVr6dX4tiCMlFYUWlenwsqlOXD41a6rQFI3KbcXMB/wqQ
2pM6Yq8xz7tVakC0/kD251VMHL1unvr3K5GkHGOYzIKpUUFxIveb6hz/a7S6sFEI2P54InMBRVXT
1qG+CNUDYEr8uKoGAfY7B6RCw4dp0noqaBT9p83LTMYXQ76Xn039TFgo+cnPzVIA
--0000000000005aac6705c8e2613a--

--===============5786669938015504448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5786669938015504448==--
