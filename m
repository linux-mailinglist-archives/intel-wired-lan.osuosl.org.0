Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A52AB244BF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 10:55:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFBB380D63;
	Wed, 13 Aug 2025 08:54:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m7pvdjc6GuVj; Wed, 13 Aug 2025 08:54:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D8EE80CFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755075285;
	bh=a3jaNKEVUZhYIrIsCy05Hngz/5E6Uji9DlFliACU1Mo=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XavH+RTpnXX0aUCw/6jkpEXiuJinlPffslW143prd2BSaIIfa9Kr8UkqpdV3p1JPb
	 WoH9q4jelVyoDrh3TUPjZwZTlTI+KHZXuUxtURWA3f99xNlvK0rnP4Sk4pCV2yYJV+
	 +UoFQsYCo2MylBkvE9OpJtKWx6wZjbB5QrYB4VavevrxV3R5GP5HogDlNd8wrBMwWn
	 KMChQeMmdbvy9TEndVcnBfmq4KbVdsq/uI0QAMfki3oL7lPONv4+TmKm2TT3kew/69
	 cPjXE2/BV2fbRDV87Q7YJUEujXOj7VfAzPU7phccn+3UOiiDcaBvJfA9FQ6zci4En0
	 Axs4fYc6IKKbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D8EE80CFC;
	Wed, 13 Aug 2025 08:54:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 663781C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 08:54:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 99313607AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 08:54:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vICPvoVeGrYW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 08:54:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.34.181.151;
 helo=pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=31388b11e=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E824C607AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E824C607AC
Received: from pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [52.34.181.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E824C607AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 08:54:39 +0000 (UTC)
X-CSE-ConnectionGUID: niM61iOuSkO3prjmHbakQA==
X-CSE-MsgGUID: if+xEH1jQ/qY/p/uaH7NAw==
X-IronPort-AV: E=Sophos;i="6.17,285,1747699200"; 
   d="scan'208";a="1106306"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2025 08:54:38 +0000
Received: from EX19MTAUWC001.ant.amazon.com [10.0.21.151:40173]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.39.4:2525] with
 esmtp (Farcaster)
 id 1a967b2c-6129-4dea-8193-31851424e75a; Wed, 13 Aug 2025 08:54:38 +0000 (UTC)
X-Farcaster-Flow-ID: 1a967b2c-6129-4dea-8193-31851424e75a
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC001.ant.amazon.com (10.250.64.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Wed, 13 Aug 2025 08:54:37 +0000
Received: from b0be8375a521.amazon.com (10.37.245.11) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Wed, 13 Aug 2025 08:54:35 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <pmenzel@molgen.mpg.de>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <pabeni@redhat.com>, <przemyslaw.kitszel@intel.com>
Date: Wed, 13 Aug 2025 17:54:23 +0900
Message-ID: <20250813085428.89006-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <785b380c-d4ba-423c-93ed-059d0aebc6be@molgen.mpg.de>
References: <785b380c-d4ba-423c-93ed-059d0aebc6be@molgen.mpg.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-Originating-IP: [10.37.245.11]
X-ClientProxiedBy: EX19D042UWB004.ant.amazon.com (10.13.139.150) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1755075279; x=1786611279;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a3jaNKEVUZhYIrIsCy05Hngz/5E6Uji9DlFliACU1Mo=;
 b=lRmybN0Z4jbdzxHPQCAmFE7a+E/PcjKwuKF1GIzXD/qdE42TPZFq+utn
 PAxM3ivkiNvrUrCqcnP2BEzoF2UWdGskdO5IHKzRfd5y2K0p54f/5Wro7
 iYILiIC4wMOXh7nmAFDEeDYX/kVYL73ST00rshvjz/X+QLgLBZLkmkcSu
 AKjN+Thq0s9cF2JbIv3PK9P5np57L5FWu1jZIZeMv/HZnyWOUkbQUUesZ
 hpKlgtK3/hE5u0/CuxPF6yT5VyiehOn1Fp+Wmyls/Yp4KwFy73cHSL5Ek
 7Zle1Ujf8oOFnbPghfzHJZH3UYbRj+2cgkOPnWgDVV75aJx1cAtwDfYWT
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=lRmybN0Z
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-next 2/2] igbvf: remove
 duplicated counter rx_long_byte_count from ethtool statistics
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

On Wed, 13 Aug 2025 10:20:33 +0200, Paul Menzel wrote:=0D
=0D
> Dear Kohei,=0D
> =0D
> =0D
> Thank you for your patch.=0D
> =0D
> Am 13.08.25 um 09:50 schrieb Kohei Enju:=0D
> > rx_long_byte_count shows the value of the GORC (Good Octets Received=0D
> > Count) register. However, the register value is already shown as=0D
> > rx_bytes and they always show the same value.=0D
> > =0D
> > Remove rx_long_byte_count as the Intel ethernet driver e1000e did in=0D
> > commit 0a939912cf9c ("e1000e: cleanup redundant statistics counter").=0D
> > =0D
> > Tested on Intel Corporation I350 Gigabit Network Connection.=0D
> > =0D
> > Tested-by: Kohei Enju <enjuk@amazon.com>=0D
> > Signed-off-by: Kohei Enju <enjuk@amazon.com>=0D
> > ---=0D
> >   drivers/net/ethernet/intel/igbvf/ethtool.c | 1 -=0D
> >   1 file changed, 1 deletion(-)=0D
> > =0D
> > diff --git a/drivers/net/ethernet/intel/igbvf/ethtool.c b/drivers/net/e=
thernet/intel/igbvf/ethtool.c=0D
> > index c6defc495f13..9c08ebfad804 100644=0D
> > --- a/drivers/net/ethernet/intel/igbvf/ethtool.c=0D
> > +++ b/drivers/net/ethernet/intel/igbvf/ethtool.c=0D
> > @@ -36,7 +36,6 @@ static const struct igbvf_stats igbvf_gstrings_stats[=
] =3D {=0D
> >   	{ "lbtx_bytes", IGBVF_STAT(stats.gotlbc, stats.base_gotlbc) },=0D
> >   	{ "tx_restart_queue", IGBVF_STAT(restart_queue, zero_base) },=0D
> >   	{ "tx_timeout_count", IGBVF_STAT(tx_timeout_count, zero_base) },=0D
> > -	{ "rx_long_byte_count", IGBVF_STAT(stats.gorc, stats.base_gorc) },=0D
> >   	{ "rx_csum_offload_good", IGBVF_STAT(hw_csum_good, zero_base) },=0D
> >   	{ "rx_csum_offload_errors", IGBVF_STAT(hw_csum_err, zero_base) },=0D
> >   	{ "rx_header_split", IGBVF_STAT(rx_hdr_split, zero_base) },=0D
> =0D
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>=0D
=0D
Thank you for reviewing!=0D
=0D
> =0D
> Kind regards,=0D
> =0D
> Paul=0D
> =0D
> =0D
> PS: Should you resend, *redundant* instead of *duplicated* might better =
=0D
> describe the removed counter.=0D
=0D
Sure, I resend this patch as v2 with the changes:=0D
  - s/duplicated/redundant/=0D
  - Remove Tested-by: tag=0D
  - Add Reviewed-by: tag=0D
=0D
Thanks for the feedback.=0D
