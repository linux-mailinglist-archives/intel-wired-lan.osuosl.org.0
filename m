Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A01B951308
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 05:19:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C43380843;
	Wed, 14 Aug 2024 03:19:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SmIicDCZIEVA; Wed, 14 Aug 2024 03:19:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 317B480072
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723605570;
	bh=enGxc5e400m7ro9SlT9CIjVL+xaHIvMVhh2pQAlB6rI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iTPyOUykUf/8Rdq4oZb5TTjg/n0VkcqNI3aob+1t9Vp37evKpX8ozaQ3fRQHd8na0
	 0EmduIxXgaIh9Leh+xPfgRDzpZdgQIn+bVVZTKOQpHAcMyFDNZ5KwA/gtWFUqlBTiw
	 6nPzDBpEExXA8O08WR7wQB+TclzPdN2B37LGBwVUVrtWnLpzp/xiNHmg1/AnlokMvr
	 R1r6fUsZG1AFt8KplarSmNnDIBrdD0G2Fu6cBGQ+0Y5Yjkuc2yZUypsbqSoHxKIC5f
	 nvrpiW443Hz0VbtfAgDPBhH3Gdb3/+S6jfEJHKLE7Rw9PmByDplZcf05PVcgMQKtpd
	 OtB+7ddQ8m0Tw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 317B480072;
	Wed, 14 Aug 2024 03:19:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 53CE81BF59B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 03:19:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 48E7C60611
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 03:19:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0IsS_SIDX3hg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 03:19:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::135; helo=mail-lf1-x135.google.com;
 envelope-from=kalesh-anakkur.purayil@broadcom.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D5320605F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5320605F9
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D5320605F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 03:19:25 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id
 2adb3069b0e04-52efbb55d24so10836337e87.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Aug 2024 20:19:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723605563; x=1724210363;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=enGxc5e400m7ro9SlT9CIjVL+xaHIvMVhh2pQAlB6rI=;
 b=TIiBVY9qLBs3OVBym2lWiWOKCxO9lbdxnfYZyanufL5BF7oeef+SEdV78R+4yZLZgE
 zXD/m0Lwy1vx8H0BO5lFBXZGKnzT2oBT76oAt1x/iJ7HS4GF6h/d78uveLgDFaN5nsZn
 8C31y78X0lmLoeXsadrBu4FAyXwquYfE4r5Knrwoc2O3pLo+zMHirnUDq6U8ZbYVnLoV
 XWgRW6yaXPhKE6+D0bosdiygVIrP3kDoT8VHw1tRCq7hxFk+cm1xJuQ8zsN4Be3PfDSY
 KY8YJ1xOCyjd+4taH3bwdLUzRK4+3/7guHq7727SNjDXz97+d3x9d8W5IoMXODyww0nN
 TL9g==
X-Gm-Message-State: AOJu0YwTdsMPvcj6v3J1yZtCeJaEZuJErH1V+KouOtnBNW4uEzd778Aq
 DU0Ig06r+roXpXyrqIuBxXBi95qEcMSeHqkq6EEOhQC6Ln/zSjG7EloKFBLRQIRRFyYy0/6gj8k
 eHhUW2Jp4IUgIuIYfLnCueyXhSqeauME/Dzl6
X-Google-Smtp-Source: AGHT+IHYzJAaOVGWBVUYMwIchE/Sc2szLIxuVcGNwE0L6jSmc2TarnCUWJHSbTYzVO0YOHYqLXYezdbt6izvKyZoFdM=
X-Received: by 2002:a05:6512:3d0a:b0:52e:8071:e89d with SMTP id
 2adb3069b0e04-532edbaedbdmr883736e87.40.1723605562724; Tue, 13 Aug 2024
 20:19:22 -0700 (PDT)
MIME-Version: 1.0
References: <20240812102210.61548-1-dawid.osuchowski@linux.intel.com>
In-Reply-To: <20240812102210.61548-1-dawid.osuchowski@linux.intel.com>
From: Kalesh Anakkur Purayil <kalesh-anakkur.purayil@broadcom.com>
Date: Wed, 14 Aug 2024 08:49:10 +0530
Message-ID: <CAH-L+nOFqs-K5YzfrfmpRHbhDGM-+1ahhWh4NXATX1FqZiPVLQ@mail.gmail.com>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
 micalg=sha-256; boundary="00000000000055d73b061f9c315b"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1723605563; x=1724210363; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=enGxc5e400m7ro9SlT9CIjVL+xaHIvMVhh2pQAlB6rI=;
 b=ZhlrIV7TofyzH6E4hFio31rfniixmTZDVJVT8E/5VkAc4CbKAiaNSA11f8q8bTu0WZ
 t5EvsbXFLnZqJD+bX+HCEMe/EXH5OQe/1uW0DHvaPBffgSqUCtbA1bF3KxCkcAG//Z9U
 bP9tZan7qXXcudNXA1scPWA4BTREZxS2TTOgA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=broadcom.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256
 header.s=google header.b=ZhlrIV7T
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add
 netif_device_attach/detach into PF reset flow
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
 Igor Bagnucki <igor.bagnucki@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--00000000000055d73b061f9c315b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

One question in line.

On Mon, Aug 12, 2024 at 3:52=E2=80=AFPM Dawid Osuchowski
<dawid.osuchowski@linux.intel.com> wrote:
>
> Ethtool callbacks can be executed while reset is in progress and try to
> access deleted resources, e.g. getting coalesce settings can result in a
> NULL pointer dereference seen below.
>
> Once the driver is fully initialized, trigger reset:
>         # echo 1 > /sys/class/net/<interface>/device/reset
> when reset is in progress try to get coalesce settings using ethtool:
>         # ethtool -c <interface>
>
> Calling netif_device_detach() before reset makes the net core not call
> the driver when ethtool command is issued, the attempt to execute an
> ethtool command during reset will result in the following message:
>
>     netlink error: No such device
>
> instead of NULL pointer dereference. Once reset is done and
> ice_rebuild() is executing, the netif_device_attach() is called to allow
> for ethtool operations to occur again in a safe manner.
>
> [  +0.000105] BUG: kernel NULL pointer dereference, address: 000000000000=
0020
> [  +0.000027] #PF: supervisor read access in kernel mode
> [  +0.000011] #PF: error_code(0x0000) - not-present page
> [  +0.000011] PGD 0 P4D 0
> [  +0.000008] Oops: Oops: 0000 [#1] PREEMPT SMP PTI
> [  +0.000012] CPU: 11 PID: 19713 Comm: ethtool Tainted: G S              =
   6.10.0-rc7+ #7
> [  +0.000015] Hardware name: Supermicro Super Server/X10SRi-F, BIOS 2.0 1=
2/17/2015
> [  +0.000013] RIP: 0010:ice_get_q_coalesce+0x2e/0xa0 [ice]
> [  +0.000090] Code: 00 55 53 48 89 fb 48 89 f7 48 83 ec 08 0f b7 8b 86 04=
 00 00 0f b7 83 82 04 00 00 39 d1 7e 30 48 8b 4b 18 48 63 ea 48 8b 0c e9 <4=
8> 8b 71 20 48 81 c6 a0 01 00 00 39 c2 7c 32 e8 ee fe ff ff 85 c0
> [  +0.000029] RSP: 0018:ffffbab1e9bcf6a8 EFLAGS: 00010206
> [  +0.000012] RAX: 000000000000000c RBX: ffff94512305b028 RCX: 0000000000=
000000
> [  +0.000012] RDX: 0000000000000000 RSI: ffff9451c3f2e588 RDI: ffff9451c3=
f2e588
> [  +0.000012] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000=
000000
> [  +0.000013] R10: ffff9451c3f2e580 R11: 000000000000001f R12: ffff945121=
fa9000
> [  +0.000012] R13: ffffbab1e9bcf760 R14: 0000000000000013 R15: ffffffff9e=
65dd40
> [  +0.000012] FS:  00007faee5fbe740(0000) GS:ffff94546fd80000(0000) knlGS=
:0000000000000000
> [  +0.000014] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  +0.000011] CR2: 0000000000000020 CR3: 0000000106c2e005 CR4: 0000000000=
1706f0
> [  +0.000012] Call Trace:
> [  +0.000009]  <TASK>
> [  +0.000007]  ? __die+0x23/0x70
> [  +0.000012]  ? page_fault_oops+0x173/0x510
> [  +0.000011]  ? ice_get_q_coalesce+0x2e/0xa0 [ice]
> [  +0.000071]  ? search_module_extables+0x19/0x60
> [  +0.000013]  ? search_bpf_extables+0x5f/0x80
> [  +0.000012]  ? exc_page_fault+0x7e/0x180
> [  +0.000013]  ? asm_exc_page_fault+0x26/0x30
> [  +0.000014]  ? ice_get_q_coalesce+0x2e/0xa0 [ice]
> [  +0.000070]  ice_get_coalesce+0x17/0x30 [ice]
> [  +0.000070]  coalesce_prepare_data+0x61/0x80
> [  +0.000012]  ethnl_default_doit+0xde/0x340
> [  +0.000012]  genl_family_rcv_msg_doit+0xf2/0x150
> [  +0.000013]  genl_rcv_msg+0x1b3/0x2c0
> [  +0.000009]  ? __pfx_ethnl_default_doit+0x10/0x10
> [  +0.000011]  ? __pfx_genl_rcv_msg+0x10/0x10
> [  +0.000010]  netlink_rcv_skb+0x5b/0x110
> [  +0.000013]  genl_rcv+0x28/0x40
> [  +0.000007]  netlink_unicast+0x19c/0x290
> [  +0.000012]  netlink_sendmsg+0x222/0x490
> [  +0.000011]  __sys_sendto+0x1df/0x1f0
> [  +0.000013]  __x64_sys_sendto+0x24/0x30
> [  +0.000340]  do_syscall_64+0x82/0x160
> [  +0.000309]  ? __mod_memcg_lruvec_state+0xa6/0x150
> [  +0.000309]  ? __lruvec_stat_mod_folio+0x68/0xa0
> [  +0.000311]  ? folio_add_file_rmap_ptes+0x86/0xb0
> [  +0.000309]  ? next_uptodate_folio+0x89/0x290
> [  +0.000309]  ? filemap_map_pages+0x521/0x5f0
> [  +0.000302]  ? do_fault+0x26e/0x470
> [  +0.000293]  ? __handle_mm_fault+0x7dc/0x1060
> [  +0.000295]  ? __count_memcg_events+0x58/0xf0
> [  +0.000289]  ? count_memcg_events.constprop.0+0x1a/0x30
> [  +0.000292]  ? handle_mm_fault+0xae/0x320
> [  +0.000284]  ? do_user_addr_fault+0x33a/0x6a0
> [  +0.000280]  ? exc_page_fault+0x7e/0x180
> [  +0.000289]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> [  +0.000271] RIP: 0033:0x7faee60d8e27
>
> Fixes: 67fe64d78c43 ("ice: Implement getting and setting ethtool coalesce=
")
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethe=
rnet/intel/ice/ice_main.c
> index eaa73cc200f4..16b4920741ff 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -608,6 +608,8 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_res=
et_req reset_type)
>                         memset(&vsi->mqprio_qopt, 0, sizeof(vsi->mqprio_q=
opt));
>                 }
>         }
> +       if (vsi->netdev)
> +               netif_device_detach(vsi->netdev);
>  skip:
>
>         /* clear SW filtering DB */
> @@ -7568,11 +7570,13 @@ static void ice_update_pf_netdev_link(struct ice_=
pf *pf)
>
>                 ice_get_link_status(pf->vsi[i]->port_info, &link_up);
>                 if (link_up) {
> +                       netif_device_attach(pf->vsi[i]->netdev);
>                         netif_carrier_on(pf->vsi[i]->netdev);
>                         netif_tx_wake_all_queues(pf->vsi[i]->netdev);
>                 } else {
>                         netif_carrier_off(pf->vsi[i]->netdev);
>                         netif_tx_stop_all_queues(pf->vsi[i]->netdev);
> +                       netif_device_detach(pf->vsi[i]->netdev);
[Kalesh] Is there any reason to attach back the netdev only if link is
up? IMO, you should attach the device back irrespective of physical
link status. In ice_prepare_for_reset(), you are detaching the device
unconditionally.

I may be missing something here.
>                 }
>         }
>  }

> --
> 2.44.0
>
>


--
Regards,
Kalesh A P

--00000000000055d73b061f9c315b
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIQiwYJKoZIhvcNAQcCoIIQfDCCEHgCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
gg3iMIIFDTCCA/WgAwIBAgIQeEqpED+lv77edQixNJMdADANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA5MTYwMDAwMDBaFw0yODA5MTYwMDAwMDBaMFsxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBS
MyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
vbCmXCcsbZ/a0fRIQMBxp4gJnnyeneFYpEtNydrZZ+GeKSMdHiDgXD1UnRSIudKo+moQ6YlCOu4t
rVWO/EiXfYnK7zeop26ry1RpKtogB7/O115zultAz64ydQYLe+a1e/czkALg3sgTcOOcFZTXk38e
aqsXsipoX1vsNurqPtnC27TWsA7pk4uKXscFjkeUE8JZu9BDKaswZygxBOPBQBwrA5+20Wxlk6k1
e6EKaaNaNZUy30q3ArEf30ZDpXyfCtiXnupjSK8WU2cK4qsEtj09JS4+mhi0CTCrCnXAzum3tgcH
cHRg0prcSzzEUDQWoFxyuqwiwhHu3sPQNmFOMwIDAQABo4IB2jCCAdYwDgYDVR0PAQH/BAQDAgGG
MGAGA1UdJQRZMFcGCCsGAQUFBwMCBggrBgEFBQcDBAYKKwYBBAGCNxQCAgYKKwYBBAGCNwoDBAYJ
KwYBBAGCNxUGBgorBgEEAYI3CgMMBggrBgEFBQcDBwYIKwYBBQUHAxEwEgYDVR0TAQH/BAgwBgEB
/wIBADAdBgNVHQ4EFgQUljPR5lgXWzR1ioFWZNW+SN6hj88wHwYDVR0jBBgwFoAUj/BLf6guRSSu
TVD6Y5qL3uLdG7wwegYIKwYBBQUHAQEEbjBsMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9i
YWxzaWduLmNvbS9yb290cjMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5j
b20vY2FjZXJ0L3Jvb3QtcjMuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFs
c2lnbi5jb20vcm9vdC1yMy5jcmwwWgYDVR0gBFMwUTALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgEo
CjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAN
BgkqhkiG9w0BAQsFAAOCAQEAdAXk/XCnDeAOd9nNEUvWPxblOQ/5o/q6OIeTYvoEvUUi2qHUOtbf
jBGdTptFsXXe4RgjVF9b6DuizgYfy+cILmvi5hfk3Iq8MAZsgtW+A/otQsJvK2wRatLE61RbzkX8
9/OXEZ1zT7t/q2RiJqzpvV8NChxIj+P7WTtepPm9AIj0Keue+gS2qvzAZAY34ZZeRHgA7g5O4TPJ
/oTd+4rgiU++wLDlcZYd/slFkaT3xg4qWDepEMjT4T1qFOQIL+ijUArYS4owpPg9NISTKa1qqKWJ
jFoyms0d0GwOniIIbBvhI2MJ7BSY9MYtWVT5jJO3tsVHwj4cp92CSFuGwunFMzCCA18wggJHoAMC
AQICCwQAAAAAASFYUwiiMA0GCSqGSIb3DQEBCwUAMEwxIDAeBgNVBAsTF0dsb2JhbFNpZ24gUm9v
dCBDQSAtIFIzMRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpHbG9iYWxTaWduMB4XDTA5
MDMxODEwMDAwMFoXDTI5MDMxODEwMDAwMFowTDEgMB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENB
IC0gUjMxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2JhbFNpZ24wggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDMJXaQeQZ4Ihb1wIO2hMoonv0FdhHFrYhy/EYCQ8eyip0E
XyTLLkvhYIJG4VKrDIFHcGzdZNHr9SyjD4I9DCuul9e2FIYQebs7E4B3jAjhSdJqYi8fXvqWaN+J
J5U4nwbXPsnLJlkNc96wyOkmDoMVxu9bi9IEYMpJpij2aTv2y8gokeWdimFXN6x0FNx04Druci8u
nPvQu7/1PQDhBjPogiuuU6Y6FnOM3UEOIDrAtKeh6bJPkC4yYOlXy7kEkmho5TgmYHWyn3f/kRTv
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
AQkEMSIEIIPtc0QfBYf6Wof/1YgfDgYq0Cxz7Hk/YZOW33lEJs/nMBgGCSqGSIb3DQEJAzELBgkq
hkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MDgxNDAzMTkyM1owaQYJKoZIhvcNAQkPMVwwWjAL
BglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG
9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQB3hwKnksyS
94JPfOErruVb9wHlzOBpTgd1JU4ALiSKeGX3Zua5l46sB1AlayXXDeAEZy36IsJG9/t85L9Ip056
bqFSomYwrXBEGcCE/oGob92UIih7THRz001Xcn199qXFwfnnmtvX0EPKtpsp2rauj5T6nKxU0604
0M+YUBGnyazNSmoaV5eS/4GWt9Kxom0HxHhI9WKgrMLOlTx4LaKEJJzqWC40jw7yjlNyi4jowM1I
FRGMq7Z7d9BlAvZTsiPgjLlTN4Jp5UJum/8h1V573du73ri7AMjeaMW4gFUb54pQzmf/9cG+GY1F
O5D72+zCrVat2UFqw3LqrEsME/16
--00000000000055d73b061f9c315b--
