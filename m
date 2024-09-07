Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBE5970243
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Sep 2024 14:54:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D36CD81EE3;
	Sat,  7 Sep 2024 12:54:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o2kyKf8nxPEE; Sat,  7 Sep 2024 12:54:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A03181EE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725713649;
	bh=3mmhAlGB6MPd7mOF0eOntljHmXDlj+VRCWTezqQ+qHI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9lU2EhHU3Rz7cUqeFVd1dSy+c25GS6z+wQk0txfOiSmW+uoYDDjNyk51E2ZOkddC0
	 YquxruqptqnIEba4fH/Fnz31bD6gX4FA6xbKJVIp4USGKvjK2vp3E6wih/1P1xE4de
	 HuK0g4tfWAzKLM3KEOWSwaZyqslOX9hAxnWz9YJXP8+OPUDra1AvDkxwYxRBHKrDy9
	 249kvZT7qaaSjduNPQ1YTKh6tNZF7Y+W3GqLV0K0peq91wtijy81dNiTJRGUYs1jGH
	 Hso5qJsRlnpBhOu5SsNRFQ2nsqSo5HB/PVHDvVJi2nAjCx1W5VKLUB1bB5+Ne2sxXW
	 ODNQp/vtg+UMw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A03181EE6;
	Sat,  7 Sep 2024 12:54:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 31DC11BF57F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Sep 2024 12:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B276406DB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Sep 2024 12:54:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ACdhGHodLU4u for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Sep 2024 12:54:07 +0000 (UTC)
X-Greylist: delayed 803 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 07 Sep 2024 12:54:06 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B128F406C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B128F406C6
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.17.11;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
Received: from mout.web.de (mout.web.de [212.227.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B128F406C6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Sep 2024 12:54:06 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.84.95]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1Mpl4x-1sFH4D05i1-00pS5P; Sat, 07
 Sep 2024 14:40:12 +0200
Message-ID: <99a2d643-9004-41c8-8585-6c5c86fab599@web.de>
Date: Sat, 7 Sep 2024 14:40:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Gui-Dong Han <hanguidong02@outlook.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Simon Horman <horms@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <SY8P300MB0460D0263B2105307C444520C0932@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <SY8P300MB0460D0263B2105307C444520C0932@SY8P300MB0460.AUSP300.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:InRZd7kFbSfK1e5eW5UUNybW5MJ0wGpHgP81H85hO47pdeGPzIF
 z1G7dIySGs8UknFg7da4mEiFyYD4Nt0GsevsLK+Yr7EeONNjivfdBcLthpCw1LQxotnA7AT
 1Grr3PCRBT8fESdSxUFoBFP0GDz2j9ZAZiLPGuoNGJ6uv9Q/zISR4qHIannHJwq/d0Yi31N
 Jq3mXQ7mp4b/8D7GyvyPQ==
UI-OutboundReport: notjunk:1;M01:P0:Kmo3fbbmsEA=;TxfY4bVIS+LFyyyhgctiOtFkLfy
 2h598VMUcHtipQ5SoZBx6mRvoiEn25FQJcfV7SMbVgz/0pjV8O/rSj3YdD7lt2VcMfNR1ep6F
 4Jk0QAO3Q1JbwAoILF4AWRNwbh7vS0dJbVgNDupx3wocOi2D/PKf/V6fv12+1NK9ZkVzS7RC6
 f/Aql3R7fJqA77luLorNM4MeMO0w4eVVKB5qbNtpdyTY+YUlWTzhJypKqbt9w0Q70yVN6dp+P
 fBb/bz146tkvfrVQNJpiV6UtkACDsGsVtS0HneyjkxE5RqfUPcA1MUZENVD5d2/WSVDoC0adZ
 9to0+9mkO/wsSRMA0vShcLBuEOYOO/Bhwhmd1QhRtfx8yZPSfHUIdr3KMsjM5jKIGEsYSmfRw
 +mXHr10yFfECrSjYdpHQj4bxazDEpjDxGP0fkvx6Tv0fQRGVsw/dbSW7F8VIzxYXTr7MxHWDm
 HjrKiLvbgzsJtrzJ9qSc16bmVc5OSAb2c777OT7rdnwmS+jMRX5tuE/Cke+kIUThapmZvSh6n
 Ih61O71agNl9MP70nV+4xKsYgbdoIgIg3FNHE42JZdfaABvpQJqkulMMarMAhJzo8xJM1J5PE
 67arZM7T2b0z1RAuvcYKSKRY3gu0PWiY9wU0Wn7JbIQFZEzXbEkS3PsmxHpgIMTSlVmGP8LRE
 PPr0pppyZh6zbUgZ5xD6TKfo4sJvGsNE2svJfaY2Zd0004B+gvdeGf5Kc/Xk9hgNw+NZ9nOOt
 3uhSBE3EROkLN6uiGSa8npiBlzqcvtx+pxc50IyZ9zDaKoyVPiGyVJIlLxZv2ykw51CqaIVr1
 aVWdQGCb6mQkkaD/xLWUi/8Q==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1725713643; x=1726318443; i=markus.elfring@web.de;
 bh=3mmhAlGB6MPd7mOF0eOntljHmXDlj+VRCWTezqQ+qHI=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=E7SHYfr7YIdtnuQ2jq3Pram4WVTKsWOqb0LWVKMw5/eNrx5hKVa+Yh0w/RSpHGmz
 ABEqlezm1Zqb/UiFmaap4pquOpqzOtag3JWZ2D7MZ82pO5McEmAS56WOrfYC4pBPW
 djprfyOSdBIJmn1aKsJYrhHQ3P8nAnEqxWZIwHh0NhSw6etASVqS7Ustg7Kp5wbRB
 2eSPYE4a7lNAC7RJGRCGA+tF8CHCF7AVoOXMOFdAzzAkeu2qwSj1h6KN+YZV35G/k
 daKk3UHw64XBQPPPSFRi+f3fusJlf/L7pz/QYi5Zy/uIXJCpv5bfKA5PI3XhtOBri
 +F+g199UcBQyruwAng==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=E7SHYfr7
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: Fix improper handling of
 refcount in ice_sriov_set_msix_vec_count()
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
Cc: Jia-Ju Bai <baijiaju1990@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

=E2=80=A6
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1096,8 +1096,10 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *=
vf_dev, int msix_vec_count)
>  		return -ENOENT;
>
>  	vsi =3D ice_get_vf_vsi(vf);
> -	if (!vsi)
> +	if (!vsi) {
> +		ice_put_vf(vf);
>  		return -ENOENT;
> +	}
>
>  	prev_msix =3D vf->num_msix;
>  	prev_queues =3D vf->num_vf_qs;
> @@ -1142,8 +1144,10 @@ int ice_sriov_set_msix_vec_count(struct pci_dev *=
vf_dev, int msix_vec_count)
>  	vf->num_msix =3D prev_msix;
>  	vf->num_vf_qs =3D prev_queues;
>  	vf->first_vector_idx =3D ice_sriov_get_irqs(pf, vf->num_msix);
> -	if (vf->first_vector_idx < 0)
> +	if (vf->first_vector_idx < 0) {
> +		ice_put_vf(vf);
>  		return -EINVAL;
> +	}
>
>  	if (needs_rebuild) {
>  		ice_vf_reconfig_vsi(vf);

Would you like to collaborate with any goto chains according to
the desired completion of exception handling?

Regards,
Markus
