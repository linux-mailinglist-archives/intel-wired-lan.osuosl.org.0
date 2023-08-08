Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCBD773AE5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 17:13:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76916611A7;
	Tue,  8 Aug 2023 15:13:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76916611A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691507585;
	bh=ppm60B0Yc4Ni/uCtD3Wpu5DzmYEEg9skx+rnT3q7dpo=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n4S/5g2Bl8FyuimjbdV5I4DtJylCX5XYxHid1bHvJx99euzzNptEAwDBs1u4MkK5/
	 e5Klcj2BP/XmDzn8Q11+u+yRczrroSpWMq8XAZHOD0gCeSpaJlkLOfLZ1dxyfM/G0V
	 /5TiKroeZWBVSVUdDb+FN5As8rJvp3p+xDoKUcb607NQbm0u00/DNE9h+16BMplvXH
	 tsE9e2ywSm4NmZ4gf9PcwwA/q1wpXXy0phsUX7EHy3n1J+m1jlJqTAg3H73Cew3LOU
	 LoHg0OAs7tIIL4zMV//7eLFud+85aoHMLqpkGn0+pARD55RH8vNO5FxvMnD6nPxrmP
	 WBydUutxXWa6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oN-bbMvaEsxn; Tue,  8 Aug 2023 15:13:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49F0B6117D;
	Tue,  8 Aug 2023 15:13:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49F0B6117D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 301251BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 08:46:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0847640562
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 08:46:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0847640562
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k3pCG2mrybQB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 08:46:21 +0000 (UTC)
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com
 [IPv6:2607:f8b0:4864:20::32d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 03A96401AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 08:46:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03A96401AE
Received: by mail-ot1-x32d.google.com with SMTP id
 46e09a7af769-6bca66e6c44so4623760a34.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Aug 2023 01:46:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691484380; x=1692089180;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bDBxMR3G3sXMobJ6HxOscOD1ysvyt0mdGqJvMciMd1U=;
 b=XdAztolCgvDDu9GQxy/7QUOgqHfabkC2NSSjb28oqVpmPwYCBhooQlEDdG/DrcYExM
 4w8LtxgRGz2gJKJxg6Yp2knSVDaDSm6I91BZxnPaXiR/OUvnJPtwqyAIBHHRRe/STHW9
 Y3iVy3A9onrwm2tYJmdCUTm5rA6BK7/E4PwRrmKhh/fx3LKskgxkFnVRjOLQ7NrA0X6S
 PNAES8WKuLsXdLJX2mAqM8+xGavsoPtlZwaDGd3/XYqa0H3cR5wElMoqA8f4ShA6/Oke
 KdEDbYkhtYyn2SfKmINBdzvah3YdiVDhHhs/l5T9ammgXZ2LDHLbqID7vUViwdW2ZyWB
 GvcQ==
X-Gm-Message-State: AOJu0YzATDETIzgQyJS/9IhfsbHPSgIoC6lCyO5fKKQQt4ffVcDZtHgK
 jwl1XwRfeASY3IOtWQhVBB0Xglh4rR2pX2Zx/0aSKw==
X-Google-Smtp-Source: AGHT+IHKwvbTr31AkRvL5hcdMGYdwGhdq6rBw0AeOhcm4bQ5HQDEOzqEQ1VdXdOVOWCok/abT4S6ZyVakozEFKATAD4=
X-Received: by 2002:a05:6871:522c:b0:1b0:883e:3095 with SMTP id
 ht44-20020a056871522c00b001b0883e3095mr14451636oac.56.1691484379911; Tue, 08
 Aug 2023 01:46:19 -0700 (PDT)
MIME-Version: 1.0
References: <20230807091347.3804523-1-linma@zju.edu.cn>
In-Reply-To: <20230807091347.3804523-1-linma@zju.edu.cn>
From: Pavan Chebbi <pavan.chebbi@broadcom.com>
Date: Tue, 8 Aug 2023 14:16:06 +0530
Message-ID: <CALs4sv19JEZgB0D5TYuO6Lei97BLC_Z-3Sad8pOwDnvRm0Eexg@mail.gmail.com>
To: Lin Ma <linma@zju.edu.cn>
X-Mailman-Approved-At: Tue, 08 Aug 2023 15:12:33 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1691484380; x=1692089180;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=bDBxMR3G3sXMobJ6HxOscOD1ysvyt0mdGqJvMciMd1U=;
 b=Bn5iFWBjd8aVetU0xdB171h3gwON07LebOMmAmWs/ugFKI1BIYfe9/16b4HRhmQHJG
 /QxvOjetZwBIrPj1WUy5pLMi32s6/4QUUQ/o9/Qy3EsEYVTZsTdk5NLFPJsRUuTN4rxr
 LO+UwRnePnKZPNvNsa9BxiepAJZwrysAAB890=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com
 header.a=rsa-sha256 header.s=google header.b=Bn5iFWBj
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] rtnetlink: remove
 redundant checks for nlattr IFLA_BRIDGE_MODE
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
Cc: ajit.khaparde@broadcom.com, simon.horman@corigine.com,
 somnath.kotur@broadcom.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 michael.chan@broadcom.com, louis.peens@corigine.com, leon@kernel.org,
 linux-rdma@vger.kernel.org, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 huanhuan.wang@corigine.com, tglx@linutronix.de, yinjun.zhang@corigine.com,
 na.wang@corigine.com, sriharsha.basavapatna@broadcom.com,
 netdev@vger.kernel.org, oss-drivers@corigine.com, linux-kernel@vger.kernel.org,
 saeedm@nvidia.com, davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============4302637413558927573=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============4302637413558927573==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000009f75eb0602656584"

--0000000000009f75eb0602656584
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 7, 2023 at 2:44=E2=80=AFPM Lin Ma <linma@zju.edu.cn> wrote:
>
> The commit d73ef2d69c0d ("rtnetlink: let rtnl_bridge_setlink checks
> IFLA_BRIDGE_MODE length") added the nla_len check in rtnl_bridge_setlink,
> which is the only caller for ndo_bridge_setlink handlers defined in
> low-level driver codes. Hence, this patch cleanups the redundant checks i=
n
> each ndo_bridge_setlink handler function.
>
> Suggested-by: Hangbin Liu <liuhangbin@gmail.com>
> Signed-off-by: Lin Ma <linma@zju.edu.cn>
> ---
> V1->V2: delete the link to last commit as it already in tree
>

Acked-by: Pavan Chebbi <pavan.chebbi@broadcom.com>

> --
> 2.17.1
>
>

--0000000000009f75eb0602656584
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
OltyqaGBuzv+bJTUL+bmV7E4QBLIqGt4jVr1R9hJdH6KxXwJdyfHZ9C6qXmoe2NQhiFUyBOJ0wgk
dB9Z1IU7nCwvNKYg2JMoJs93tIgbhPJg/D7pqW8gabkCAwEAAaOCAdowggHWMA4GA1UdDwEB/wQE
AwIFoDCBowYIKwYBBQUHAQEEgZYwgZMwTgYIKwYBBQUHMAKGQmh0dHA6Ly9zZWN1cmUuZ2xvYmFs
c2lnbi5jb20vY2FjZXJ0L2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNydDBBBggrBgEFBQcw
AYY1aHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAw
TQYDVR0gBEYwRDBCBgorBgEEAaAyASgKMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8vd3d3Lmdsb2Jh
bHNpZ24uY29tL3JlcG9zaXRvcnkvMAkGA1UdEwQCMAAwSQYDVR0fBEIwQDA+oDygOoY4aHR0cDov
L2NybC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcmwwJAYDVR0R
BB0wG4EZcGF2YW4uY2hlYmJpQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNV
HSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUEV6y/89alKPoFbKUaJXsvWu5
fdowDQYJKoZIhvcNAQELBQADggEBAEHSIB6g652wVb+r2YCmfHW47Jo+5TuCBD99Hla8PYhaWGkd
9HIyD3NPhb6Vb6vtMWJW4MFGQF42xYRrAS4LZj072DuMotr79rI09pbOiWg0FlRRFt6R9vgUgebu
pWSH7kmwVXcPtY94XSMMak4b7RSKig2mKbHDpD4bC7eGlwl5RxzYkgrHtMNRmHmQor5Nvqe52cFJ
25Azqtwvjt5nbrEd81iBmboNTEnLaKuxbbCtLaMEP8xKeDjAKnNOqHUMps0AsQT8c0EGq39YHpjp
Wn1l67VU0rMShbEFsiUf9WYgE677oinpdm0t2mdCjxr35tryxptoTZXKHDxr/Yy6l6ExggJtMIIC
aQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQD
EyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwV/XkICjVscn4SNZMw
DQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIAGeXPPQ2FfaYXzsRZQZKp3gTygqgZ34
lEnFrZ5cWRLZMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIzMDgw
ODA4NDYyMFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCG
SAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQC
ATANBgkqhkiG9w0BAQEFAASCAQA3pO86oTxubbGfwtVwZ7UcHYul3at6k7044rfYteP8/04RhgCi
/ILFHn+Q1DCmAhVogSuHqYvRapYclen+3V9XnuKcGzY2OL9e2GNMyQyn27n+YQQSqEyIhD206lsG
aiCmTQFsFV7KDjeMCSkLYWKXhbUHU+AkBp3s670Y9aayo8h+0I+FKFCekp6HCmYwXZkrb8ssYP+V
yB+mSxwekL4IDow52oMQAOZDN6JO5RhdHYc/BER48Yuhh/7ctJ6hqeLhj58I+uRDLtzrZS65BYb+
eZDTeXWWaZyZxrVdnxTSJiPiGId97A5XizHbP1vnG7ALHZbKs4KiWenZ4s9+uHjA
--0000000000009f75eb0602656584--

--===============4302637413558927573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4302637413558927573==--
