Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8B63E2C56
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 16:16:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04D314059F;
	Fri,  6 Aug 2021 14:16:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TV-DR90NWICw; Fri,  6 Aug 2021 14:16:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E89EE40581;
	Fri,  6 Aug 2021 14:16:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DE071BF82F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3968540410
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VEMbHIRRL-TG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 08:55:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com
 [IPv6:2607:f8b0:4864:20::32d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BF51740403
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 08:55:02 +0000 (UTC)
Received: by mail-ot1-x32d.google.com with SMTP id
 z6-20020a0568302906b02904f268d34f86so7856420otu.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Aug 2021 01:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vQ3UgSf4xT50NaOBc6M36wI32J1L7fLqBH5vbSjkalc=;
 b=bjBzkosPXiPitvlhiVG6dOyOTbeWtMNEgU5suraax7zSp21b90oEW9/LQFvXogQxis
 VLraQuJ1yXZu/Lm0BeE/QtlfE/novNjjgoKaOvrkvNi83w0Sca3NbIwEdykqO6tJL+x4
 /RtjyLVhRnrtJT/JstldUvOQEvMvXx1CZgpQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vQ3UgSf4xT50NaOBc6M36wI32J1L7fLqBH5vbSjkalc=;
 b=oMcfTWHrC/jn7Ff8/OBR7iyPGq0Q3eKdlp0jU2ctH1leZkddb7SVQcM4wwrrYFMe0S
 Gt81fkUBQUpiRHWIEdtrQaUZayf8Vq6I140fs7iU2MAOGwl+qqmfPj3StyumfFq4ytmM
 ftC0Zk8lsKzmU+vVyWzE5sxHYIxZJ2SmY9CRU4RXGSGJCcq6Fw/nu+YjI0sfHTag1HBO
 GVpy33vpJehm4FLvaEMDJe+ApIVzTRLpk7DSsAkhwCofX2Y37jgkGuWLIeesGjl8TP/M
 7wwTCamMkbp30LtvNh7/ej0Lp0npxyPwpupRyeswpw56obDPgpiupEVbB8W1Q9IXnRx0
 Jbew==
X-Gm-Message-State: AOAM533ShllwE6CKDZj5HJf/GFdG6QxIUxV7PTVlyQByS4vrmnHRDdA8
 8YEjqGwihtVCsH0yQeIW6oFmuj4kw+8Od2fhFwRHoQ==
X-Google-Smtp-Source: ABdhPJwUbALNSlNSC8icYgxyFUrSEnrWJP5ENADRBHlZgfsVbbKz5g2OW38CCOeAgzI1FNK4mxJJwvIvgUo4wj9XYvU=
X-Received: by 2002:a05:6830:1d73:: with SMTP id
 l19mr6671887oti.316.1628240101470; 
 Fri, 06 Aug 2021 01:55:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210720232624.1493424-1-nitesh@redhat.com>
 <20210720232624.1493424-6-nitesh@redhat.com>
In-Reply-To: <20210720232624.1493424-6-nitesh@redhat.com>
From: Sreekanth Reddy <sreekanth.reddy@broadcom.com>
Date: Fri, 6 Aug 2021 14:24:49 +0530
Message-ID: <CAK=zhgo29UsFsK_q9RYnEocmTA20kUVX4BNnrpJPh35Ssb49zw@mail.gmail.com>
To: Nitesh Narayan Lal <nitesh@redhat.com>
X-Mailman-Approved-At: Fri, 06 Aug 2021 14:16:51 +0000
Subject: Re: [Intel-wired-lan] [PATCH v5 05/14] scsi: mpt3sas: Use
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
 Peter Zijlstra <peterz@infradead.org>, linux-pci@vger.kernel.org,
 viresh.kumar@linaro.org, _govind@gmx.com, james.smart@broadcom.com,
 mustafa.ismail@intel.com, govind@gmx.com, Tushar.Khandelwal@arm.com,
 minlei@redhat.com, ahleihel@redhat.com, Ingo Molnar <mingo@kernel.org>,
 sassmann@redhat.com, kabel@kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-scsi <linux-scsi@vger.kernel.org>, borisp@nvidia.com, maz@kernel.org,
 Sathya Prakash Veerichetty <sathya.prakash@broadcom.com>,
 "Ewan D. Milne" <emilne@redhat.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>, tatyana.e.nikolova@intel.com,
 Chandrakanth Patil <chandrakanth.patil@broadcom.com>,
 intel-wired-lan@lists.osuosl.org, yongqiang.niu@mediatek.com,
 abelits@marvell.com, nilal@redhat.com,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, chunkuang.hu@kernel.org,
 dick.kennedy@broadcom.com, faisal.latif@intel.com,
 Suganath Prabu Subramani <suganath-prabu.subramani@broadcom.com>,
 frederic@kernel.org, robin.murphy@arm.com, rostedt@goodmis.org,
 rppt@linux.vnet.ibm.com, kuba@kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, somnath.kotur@broadcom.com,
 shiraz.saleem@intel.com, ahs3@redhat.com, pjwaskiewicz@gmail.com,
 sriharsha.basavapatna@broadcom.com, Neil Horman <nhorman@tuxdriver.com>,
 Shivasharan Srikanteshwara <shivasharan.srikanteshwara@broadcom.com>,
 netdev@vger.kernel.org, mtosatti@redhat.com, kheib@redhat.com,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, stephen@networkplumber.org,
 Sumit Saxena <sumit.saxena@broadcom.com>, poros@redhat.com,
 bjorn.andersson@linaro.org, Tomas Henzl <thenzl@redhat.com>,
 linux-api@vger.kernel.org, baolin.wang7@gmail.com, saeedm@nvidia.com,
 Andrew Morton <akpm@linux-foundation.org>, jkc@redhat.com, jbrandeb@kernel.org,
 David Miller <davem@davemloft.net>, leonro@nvidia.com, benve@cisco.com
Content-Type: multipart/mixed; boundary="===============2976346374072884076=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2976346374072884076==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000e2a15305c8e03057"

--000000000000e2a15305c8e03057
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
> provided cpumask as an affinity (if not NULL) for the interrupt is an
> undocumented side effect.
>
> To remove this side effect irq_set_affinity_hint() has been marked
> as deprecated and new interfaces have been introduced. Hence, replace the
> irq_set_affinity_hint() with the new interface irq_set_affinity_and_hint()
> where the provided mask needs to be applied as the affinity and
> affinity_hint pointer needs to be set and replace with
> irq_update_affinity_hint() where only affinity_hint needs to be updated.
>

Changes looks good and also verified that the high iops queue's IRQs
are affinitied to local numa node.

Reviewed-by: Sreekanth Reddy <sreekanth.reddy@broadcom.com>
> Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> ---
>  drivers/scsi/mpt3sas/mpt3sas_base.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/scsi/mpt3sas/mpt3sas_base.c b/drivers/scsi/mpt3sas/mpt3sas_base.c
> index c39955239d1c..c1a11962f227 100644
> --- a/drivers/scsi/mpt3sas/mpt3sas_base.c
> +++ b/drivers/scsi/mpt3sas/mpt3sas_base.c
> @@ -2991,6 +2991,7 @@ _base_check_enable_msix(struct MPT3SAS_ADAPTER *ioc)
>  static void
>  _base_free_irq(struct MPT3SAS_ADAPTER *ioc)
>  {
> +       unsigned int irq;
>         struct adapter_reply_queue *reply_q, *next;
>
>         if (list_empty(&ioc->reply_queue_list))
> @@ -2998,9 +2999,10 @@ _base_free_irq(struct MPT3SAS_ADAPTER *ioc)
>
>         list_for_each_entry_safe(reply_q, next, &ioc->reply_queue_list, list) {
>                 list_del(&reply_q->list);
> -               if (ioc->smp_affinity_enable)
> -                       irq_set_affinity_hint(pci_irq_vector(ioc->pdev,
> -                           reply_q->msix_index), NULL);
> +               if (ioc->smp_affinity_enable) {
> +                       irq = pci_irq_vector(ioc->pdev, reply_q->msix_index);
> +                       irq_update_affinity_hint(irq, NULL);
> +               }
>                 free_irq(pci_irq_vector(ioc->pdev, reply_q->msix_index),
>                          reply_q);
>                 kfree(reply_q);
> @@ -3056,16 +3058,13 @@ _base_request_irq(struct MPT3SAS_ADAPTER *ioc, u8 index)
>   * @ioc: per adapter object
>   *
>   * The enduser would need to set the affinity via /proc/irq/#/smp_affinity
> - *
> - * It would nice if we could call irq_set_affinity, however it is not
> - * an exported symbol
>   */
>  static void
>  _base_assign_reply_queues(struct MPT3SAS_ADAPTER *ioc)
>  {
> -       unsigned int cpu, nr_cpus, nr_msix, index = 0;
> +       unsigned int cpu, nr_cpus, nr_msix, index = 0, irq;
>         struct adapter_reply_queue *reply_q;
> -       int local_numa_node;
> +       const struct cpumask *mask;
>
>         if (!_base_is_controller_msix_enabled(ioc))
>                 return;
> @@ -3088,11 +3087,11 @@ _base_assign_reply_queues(struct MPT3SAS_ADAPTER *ioc)
>                  * corresponding to high iops queues.
>                  */
>                 if (ioc->high_iops_queues) {
> -                       local_numa_node = dev_to_node(&ioc->pdev->dev);
> +                       mask = cpumask_of_node(dev_to_node(&ioc->pdev->dev));
>                         for (index = 0; index < ioc->high_iops_queues;
>                             index++) {
> -                               irq_set_affinity_hint(pci_irq_vector(ioc->pdev,
> -                                   index), cpumask_of_node(local_numa_node));
> +                               irq = pci_irq_vector(ioc->pdev, index);
> +                               irq_set_affinity_and_hint(irq, mask);
>                         }
>                 }
>
> --
> 2.27.0
>

--000000000000e2a15305c8e03057
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
5AGo2E3pe+2yEgkxKvM2fnniZHUiSjbrfKk6nl9RIXPOKUP5HntZFdA5XuNYXWM+HPs3O0AJwBm/
VCZsZtkjVjxeBmTXiXDnxytdsHdGrHGymPfjJYatDu6d1KRVDlMCAwEAAaOCAd0wggHZMA4GA1Ud
DwEB/wQEAwIFoDCBowYIKwYBBQUHAQEEgZYwgZMwTgYIKwYBBQUHMAKGQmh0dHA6Ly9zZWN1cmUu
Z2xvYmFsc2lnbi5jb20vY2FjZXJ0L2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNydDBBBggr
BgEFBQcwAYY1aHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJj
YTIwMjAwTQYDVR0gBEYwRDBCBgorBgEEAaAyASgKMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8vd3d3
Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMAkGA1UdEwQCMAAwSQYDVR0fBEIwQDA+oDygOoY4
aHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcmww
JwYDVR0RBCAwHoEcc3JlZWthbnRoLnJlZGR5QGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEF
BQcDBDAfBgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUClVHbAvhzGT8
s2/6xOf58NkGMQ8wDQYJKoZIhvcNAQELBQADggEBAENRsP1H3calKC2Sstg/8li8byKiqljCFkfi
IhcJsjPOOR9UZnMFxAoH/s2AlM7mQDR7rZ2MxRuUnIa6Cp5W5w1lUJHktjCUHnQq5nIAZ9GH5SDY
pgzbFsoYX8U2QCmkAC023FF++ZDJuc9aj0R/nhABxmUYErIze2jV/VO8Pj7TnCrBONZ/Qvf8G5CQ
X1hfOcCDBgT7eSvf9YRLaV935mB9/V+KYX8lT4E0lB4wQ0OLV8qUS9UuNoG2lCJ5UQTMrBgeUFFY
eKKhn+R91COmRlKGlaCdTtzKG5atS6dPnGEYUHjcpUvzejmJ5ghBk6P01HqSACsszDOzmBvdiOs+
Ux0xggJtMIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNh
MTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgxyeqr1
0keLkvPdYw4wDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIHGcjA9kKHvPIHX+klsZ
wzPQtoRt275a2289l8ZnwnDsMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkF
MQ8XDTIxMDgwNjA4NTUwMVowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUD
BAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsG
CWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQAJePjWHiUI9thsxtmg+5mkHJIkX1IPFlpSIzId
iGditYwulmUWSateElSnXlRdIpbMK5cD3U4B9KmPIJo2+tWkF0o7Aq7Q2NGRXVztfpXNNMcgmual
K32mbTudUOntuMl+eBW+JHbKOYYxBU1ojm7dA4RRppxIK36nmZlKpxtd9izofqog0okJM6OQLbX5
H2KB4FUkVs3xBfZ0UvTY1v6VA/nxW/uA0L4UefhEhk3W/DGjS/fZOJYpb9JXnyDr5nok9xAM8bGR
HFJDhCwjOy0Ge2w06Q4XmhJ994BHFousratRFbu4qeeTDwhBUeevaDWEeOuwy46IPuw/lUca/hN1
--000000000000e2a15305c8e03057--

--===============2976346374072884076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2976346374072884076==--
