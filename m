Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D4FA01851
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Jan 2025 07:43:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6640140650;
	Sun,  5 Jan 2025 06:43:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2PeVXq8AqZ7f; Sun,  5 Jan 2025 06:43:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25C4840645
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736059382;
	bh=4d1Rsa4mhujt/0HOJJvpbrPrQXDmk4OumqDZmUAU9Bo=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SC2wayupbYhEq2Weo/paVNHGsf+2nh7ak5bymak0XAQk+SPVAFodZNbUNHWjQBkC0
	 lILHGZ8eT4qvklFh8eL6GKeGk/CCUtXTGm8TYLkMqzJU3SOH5YNjozqoTaMTDPHtmo
	 qSRjeiY97BPx3XuZpVZashqU3ZboGO05Do2cqknoRx4zmj6VKAgz7GI7VC7xHJxCLN
	 Qxn2fY253YL7+w9twE6Y43Z1QJgUNxN8KHRRTHE+VsqOb00jZFq0b/ojtinG7zL2KL
	 5NvR/u1izKXvuZUR3d6Vu5bV5Ese+VzPsyECtazKaCUvX4pb1e4j81bhuLO2ylCn+o
	 rFjkAZ9lJQ51Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25C4840645;
	Sun,  5 Jan 2025 06:43:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B89C8D92
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 06:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 923084024C
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 06:43:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tsp3C5i3W40k for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Jan 2025 06:42:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::531; helo=mail-ed1-x531.google.com;
 envelope-from=kalesh-anakkur.purayil@broadcom.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A3814400FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3814400FE
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A3814400FE
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Jan 2025 06:42:57 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-5d88c355e0dso4601943a12.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 04 Jan 2025 22:42:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736059376; x=1736664176;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4d1Rsa4mhujt/0HOJJvpbrPrQXDmk4OumqDZmUAU9Bo=;
 b=buWko32x4FPUNwMAtGhDGoxeD1JxcyBQ7g3bgUyZEdPIxopZFf97UY39bOvBo3zT38
 XBorOfnFo5+SdzyBoPeAuCkRET2seOlPvtItuKN/S4bHoqO9/D5SbqinuWNR/eVe85WB
 bfSOZAeZF7zIyyYowrSaJ90cEJG+TVznVQ9jXyxWUp/f+pljshg9GiHCdTaNsNkHUI/R
 Y1+1YgyDdizJtejquMBBz2VyJ1SWDoJ1Wx9kCoVE6BmCt0tsNlIMGAHBRnihqfXVm8MT
 UaUJ1gQismptlmoSePPhVGFho2uB+7yvr75nrgwbWNEcXUwflwHV84hSmv71s0ZJ1bkQ
 mRkg==
X-Forwarded-Encrypted: i=1;
 AJvYcCW6+lQ16AT1yCabzu4jPscRaHyShzgLitk04IZ3TMM66P4Rk0J4GN+De+LkIiglmprpVQICRN14Zab6nk4tvHE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzVuG3ZFcMH+Zd5BsfpSHCyKzGPcmLSGn6YMq9fqiPd8/fw2iO2
 VnAGMc1v9fYF+HDxwAGaE8PEquugznkR779PEqDmydAKNHCDbwtL6MwSd27TRWacR36uwsvUQEV
 23coDrPWiEBl8vNCngFktfMbgbu6Mj+l3vBOQ
X-Gm-Gg: ASbGncszD51tsjEg1+oy5fX+zZSi/uymwdM8TFxb5JMV1bMdRZMrV/77dWnVbj4izw5
 RRgb6PSaeclZTlmxy9tQA6YwohwJBfO404yEY
X-Google-Smtp-Source: AGHT+IHFjtkv/aViNiKbDylS/m+t0wVyOn1GHCKdz2I9E+Uaie2oP7CiBPqRZdBXX3YTMFcDlq3bDQ4w2aCr1bffA+U=
X-Received: by 2002:a05:6402:3553:b0:5d0:fc80:c4d1 with SMTP id
 4fb4d7f45d1cf-5d81dd8087emr47910180a12.14.1736059376030; Sat, 04 Jan 2025
 22:42:56 -0800 (PST)
MIME-Version: 1.0
References: <20250104004314.208259-1-ahmed.zaki@intel.com>
 <20250104004314.208259-5-ahmed.zaki@intel.com>
In-Reply-To: <20250104004314.208259-5-ahmed.zaki@intel.com>
From: Kalesh Anakkur Purayil <kalesh-anakkur.purayil@broadcom.com>
Date: Sun, 5 Jan 2025 12:12:43 +0530
Message-ID: <CAH-L+nOOwf9-MyMXHC0-aeF7YjU9qwoCq5SD=T0+6GBVNhjowA@mail.gmail.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, 
 andrew+netdev@lunn.ch, edumazet@google.com, kuba@kernel.org, 
 pabeni@redhat.com, davem@davemloft.net, michael.chan@broadcom.com, 
 tariqt@nvidia.com, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 jdamato@fastly.com, shayd@nvidia.com, akpm@linux-foundation.org
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
 micalg=sha-256; boundary="0000000000006f5503062aefd233"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1736059376; x=1736664176; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=4d1Rsa4mhujt/0HOJJvpbrPrQXDmk4OumqDZmUAU9Bo=;
 b=DfpxWF3fBrUvzmuVEvtpEIMMZEdBUhL4SsMLVqTe6E3LYbUBZCuYbMovq901wicsAF
 8xxY5Oo/rpPcNXPD1C49uGrVhbiYQWPGWODlTFrwUAXzGMnxr4iz9A6Jl40WgLKKOh+S
 cU1PzR1Tt2x75UTf27CZHN7wg5AMhBBWOBOGs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=broadcom.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256
 header.s=google header.b=DfpxWF3f
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 4/6] bnxt: use napi's irq
 affinity
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--0000000000006f5503062aefd233
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 4, 2025 at 6:13=E2=80=AFAM Ahmed Zaki <ahmed.zaki@intel.com> wr=
ote:
>
> Delete the driver CPU affinity info and use the core's napi config
> instead.
>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/broadcom/bnxt/bnxt.c | 26 ++++-------------------
>  drivers/net/ethernet/broadcom/bnxt/bnxt.h |  2 --
>  2 files changed, 4 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethe=
rnet/broadcom/bnxt/bnxt.c
> index cc3ca3440b0a..fcf230fde1ec 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> @@ -11193,14 +11193,8 @@ static void bnxt_free_irq(struct bnxt *bp)
>                 int map_idx =3D bnxt_cp_num_to_irq_num(bp, i);
>
>                 irq =3D &bp->irq_tbl[map_idx];
> -               if (irq->requested) {
> -                       if (irq->have_cpumask) {
> -                               irq_update_affinity_hint(irq->vector, NUL=
L);
> -                               free_cpumask_var(irq->cpu_mask);
> -                               irq->have_cpumask =3D 0;
> -                       }
> +               if (irq->requested)
>                         free_irq(irq->vector, bp->bnapi[i]);
> -               }
>
>                 irq->requested =3D 0;
>         }
> @@ -11229,21 +11223,6 @@ static int bnxt_request_irq(struct bnxt *bp)
>
>                 netif_napi_set_irq(&bp->bnapi[i]->napi, irq->vector);
>                 irq->requested =3D 1;
> -
> -               if (zalloc_cpumask_var(&irq->cpu_mask, GFP_KERNEL)) {
> -                       int numa_node =3D dev_to_node(&bp->pdev->dev);
> -
> -                       irq->have_cpumask =3D 1;
> -                       cpumask_set_cpu(cpumask_local_spread(i, numa_node=
),
> -                                       irq->cpu_mask);
> -                       rc =3D irq_update_affinity_hint(irq->vector, irq-=
>cpu_mask);
> -                       if (rc) {
> -                               netdev_warn(bp->dev,
> -                                           "Update affinity hint failed,=
 IRQ =3D %d\n",
> -                                           irq->vector);
> -                               break;
> -                       }
> -               }
>         }
>         return rc;
>  }
> @@ -13292,6 +13271,7 @@ static int bnxt_set_features(struct net_device *d=
ev, netdev_features_t features)
>                                 bp->flags =3D old_flags;
>                 }
>         }
> +
This change looks unrelated, please remove.
>         return rc;
>  }
>
> @@ -16172,6 +16152,8 @@ static int bnxt_init_one(struct pci_dev *pdev, co=
nst struct pci_device_id *ent)
>         dev->xdp_features =3D NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIR=
ECT |
>                             NETDEV_XDP_ACT_RX_SG;
>
> +       netif_enable_irq_affinity(dev);
> +
>  #ifdef CONFIG_BNXT_SRIOV
>         init_waitqueue_head(&bp->sriov_cfg_wait);
>  #endif
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.h b/drivers/net/ethe=
rnet/broadcom/bnxt/bnxt.h
> index 094c9e95b463..7be2f90d0c05 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt.h
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.h
> @@ -1228,9 +1228,7 @@ struct bnxt_irq {
>         irq_handler_t   handler;
>         unsigned int    vector;
>         u8              requested:1;
> -       u8              have_cpumask:1;
>         char            name[IFNAMSIZ + BNXT_IRQ_NAME_EXTRA];
> -       cpumask_var_t   cpu_mask;
>  };
>
>  #define HWRM_RING_ALLOC_TX     0x1
> --
> 2.43.0
>
>


--=20
Regards,
Kalesh AP

--0000000000006f5503062aefd233
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBWowggRSoAMCAQICDDfBRQmwNSI92mit0zANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMjA5MTAwODI5NTZaFw0yNTA5MTAwODI5NTZaMIGi
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xHzAdBgNVBAMTFkthbGVzaCBBbmFra3VyIFB1cmF5aWwxMjAw
BgkqhkiG9w0BCQEWI2thbGVzaC1hbmFra3VyLnB1cmF5aWxAYnJvYWRjb20uY29tMIIBIjANBgkq
hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxnv1Reaeezfr6NEmg3xZlh4cz9m7QCN13+j4z1scrX+b
JfnV8xITT5yvwdQv3R3p7nzD/t29lTRWK3wjodUd2nImo6vBaH3JbDwleIjIWhDXLNZ4u7WIXYwx
aQ8lYCdKXRsHXgGPY0+zSx9ddpqHZJlHwcvas3oKnQN9WgzZtsM7A8SJefWkNvkcOtef6bL8Ew+3
FBfXmtsPL9I2vita8gkYzunj9Nu2IM+MnsP7V/+Coy/yZDtFJHp30hDnYGzuOhJchDF9/eASvE8T
T1xqJODKM9xn5xXB1qezadfdgUs8k8QAYyP/oVBafF9uqDudL6otcBnziyDBQdFCuAQN7wIDAQAB
o4IB5DCCAeAwDgYDVR0PAQH/BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZC
aHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJj
YTIwMjAuY3J0MEEGCCsGAQUFBzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3Iz
cGVyc29uYWxzaWduMmNhMjAyMDBNBgNVHSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcC
ARYmaHR0cHM6Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNV
HR8EQjBAMD6gPKA6hjhodHRwOi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNp
Z24yY2EyMDIwLmNybDAuBgNVHREEJzAlgSNrYWxlc2gtYW5ha2t1ci5wdXJheWlsQGJyb2FkY29t
LmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGP
zzAdBgNVHQ4EFgQUI3+tdStI+ABRGSqksMsiCmO9uDAwDQYJKoZIhvcNAQELBQADggEBAGfe1o9b
4wUud0FMjb/FNdc433meL15npjdYWUeioHdlCGB5UvEaMGu71QysfoDOfUNeyO9YKp0h0fm7clvo
cBqeWe4CPv9TQbmLEtXKdEpj5kFZBGmav69mGTlu1A9KDQW3y0CDzCPG2Fdm4s73PnkwvemRk9E2
u9/kcZ8KWVeS+xq+XZ78kGTKQ6Wii3dMK/EHQhnDfidadoN/n+x2ySC8yyDNvy81BocnblQzvbuB
a30CvRuhokNO6Jzh7ZFtjKVMzYas3oo6HXgA+slRszMu4pc+fRPO41FHjeDM76e6P5OnthhnD+NY
x6xokUN65DN1bn2MkeNs0nQpizDqd0QxggJtMIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYD
VQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25h
bFNpZ24gMiBDQSAyMDIwAgw3wUUJsDUiPdpordMwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcN
AQkEMSIEIFoe2mgF5wKXtwBnwGrojpGrp/+HPiUHe7JLXAvrUsv5MBgGCSqGSIb3DQEJAzELBgkq
hkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI1MDEwNTA2NDI1NlowaQYJKoZIhvcNAQkPMVwwWjAL
BglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG
9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQBd8DJLtoC6
lEs6/sPKQnVD20cPMtO7dEuvzgBRflAB8nGCq1QbFK10J5i9fPQ72/7LloDL0VkILFvgiMr8BBvA
ExWeQoAxMFW6rcPb12M0L34rBexihnPvmzxdEg9z292/PZS1eyXDjV/CIZmDtJ0OTG01hHKhaGXq
cCSyxjMAB6GWlajZUtNPM1/WJ1NcaWt+IJMFdVRUpu7eUJxflR3dUGlK3fLlN0WtQoyLQGiLlou5
ymSq5E/M1Wj7oOfWyOx30AYqaGn4sN8qGozV4K9mZD/KxJEqPZiJ4aB117pssZrNxEwvJRTGHM/I
17WGaLNSQi4iJSG0iXxGzQGWLcXs
--0000000000006f5503062aefd233--
