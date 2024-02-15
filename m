Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFF88567D2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 16:34:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9563D41E6D;
	Thu, 15 Feb 2024 15:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ST9lwtQPS1NL; Thu, 15 Feb 2024 15:34:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B4FC141E5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708011241;
	bh=CGLIiOezS/B69QKtvQ2+4znP2qmka4h4Kq5uSfWJywM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=uTwcI9kE6wVDZ3R/Q66C/x9zlZKOWqfD0MAuqGybMqsjsOrEVIIfvSD+hSnBub9H+
	 aSuK55HuxHJDVGgkAJpO0fhUxb/XpxEfDEkglXj7I61C+cjdK2e1/qNO+mh9HuojA+
	 G+89DGndvnfM/Z7YxCkz8SdKisZe3c91mp9EFJDdCzHuyA33CND261EyLkleuQo33+
	 o/xx4v9cXHezROjTvsPntgaabP+Xq/zq4H/XHg605nagMaouHwSOojeQKPSDKIm+S9
	 MNrt4brPpw+KjGFcUmkwlKaFgje4QEiSv3AwN9uDnWavPPi0e8JURgcxuNV7Tvwnae
	 C4OyKhTKxhlyA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4FC141E5D;
	Thu, 15 Feb 2024 15:34:01 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D94891BF292
 for <intel-wired-lan@osuosl.org>; Thu, 15 Feb 2024 15:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C586641B6E
 for <intel-wired-lan@osuosl.org>; Thu, 15 Feb 2024 15:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZhPZrmei9HMJ for <intel-wired-lan@osuosl.org>;
 Thu, 15 Feb 2024 15:33:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=17.57.156.17;
 helo=ci74p00im-qukt09082702.me.com; envelope-from=ernesto@castellotti.net;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 172CA41B14
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 172CA41B14
Received: from ci74p00im-qukt09082702.me.com (ci74p00im-qukt09082702.me.com
 [17.57.156.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 172CA41B14
 for <intel-wired-lan@osuosl.org>; Thu, 15 Feb 2024 15:33:57 +0000 (UTC)
Received: from [10.44.0.54] (ci77p00im-dlb-asmtp-mailmevip.me.com
 [17.57.156.26])
 by ci74p00im-qukt09082702.me.com (Postfix) with ESMTPSA id 5D97515400D9;
 Thu, 15 Feb 2024 15:33:55 +0000 (UTC)
Message-ID: <d28eb982fc9f696a56be4ba591e4b6efd1057e84.camel@castellotti.net>
From: Ernesto Castellotti <ernesto@castellotti.net>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 anthony.l.nguyen@intel.com, intel-wired-lan@osuosl.org, 
 piotr.kwapulinski@intel.com
Date: Thu, 15 Feb 2024 16:33:52 +0100
In-Reply-To: <82fa1430-eae7-4635-b663-9fbf8336c891@intel.com>
References: <20240207231524.51753-1-ernesto@castellotti.net>
 <82fa1430-eae7-4635-b663-9fbf8336c891@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.50.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: GislSjuLKdq4RDMVI_3ae8hmp0-VHCE4
X-Proofpoint-ORIG-GUID: GislSjuLKdq4RDMVI_3ae8hmp0-VHCE4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-15_14,2024-02-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0 spamscore=0
 mlxlogscore=976 bulkscore=0 malwarescore=0 mlxscore=0 clxscore=1030
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2402150126
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=castellotti.net; s=sig1; t=1708011237;
 bh=CGLIiOezS/B69QKtvQ2+4znP2qmka4h4Kq5uSfWJywM=;
 h=Message-ID:Subject:From:To:Date:Content-Type:MIME-Version;
 b=REAldWqysHtbpkDEudjn6R9Qte/4BYXBVvppQ5zIqZDETONZW1sdp+el8ApjL1ngM
 uWBACxmEXclTcoCp5kRc/GkZQ3PMbKEm+Bu3xRkwwYseUsIwPpE63FDq0UTlha38qH
 2QYUkHa5vsKBcAA2hF4bRCt5ffi6amFA7uAyOkyA7sVHmbQvxzqFsxEQZkCYA5W0G0
 FmpcJ6KEmwUfu+86yGmmWVorUaQVBi8EhetFkbSw1xQeDFrOf3JL2Al1WJTVb24gLx
 0lSDbyfAkjqt5PX3FpbKmQucaF11RO4zCihVk+b7mE1NNSDuF8hgd0YL7bmgrT0Ipe
 zuum5H4Pqk9MA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=castellotti.net
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=castellotti.net header.i=@castellotti.net
 header.a=rsa-sha256 header.s=sig1 header.b=REAldWqy
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Add 1000BASE-BX
 support
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
Reply-To: 82fa1430-eae7-4635-b663-9fbf8336c891@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2024-02-15 at 15:46 +0100, Przemek Kitszel wrote:
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> > index ef72729d7c93..b5bc60916402 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> > @@ -17,6 +17,7 @@
> >   #define IXGBE_SFF_1GBE_COMP_CODES	0x6
> >   #define IXGBE_SFF_10GBE_COMP_CODES	0x3
> >   #define IXGBE_SFF_CABLE_TECHNOLOGY	0x8
> > +#define IXGBE_SFF_BITRATE_NOMINAL	0xC
> >   #define IXGBE_SFF_CABLE_SPEC_COMP	0x3C
> >   #define IXGBE_SFF_SFF_8472_SWAP		0x5C
> >   #define IXGBE_SFF_SFF_8472_COMP		0x5E
> > @@ -39,6 +40,7 @@
> >   #define IXGBE_SFF_1GBASESX_CAPABLE		0x1
> >   #define IXGBE_SFF_1GBASELX_CAPABLE		0x2
> >   #define IXGBE_SFF_1GBASET_CAPABLE		0x8
> > +#define IXGBE_SFF_BASEBX10_CAPABLE		0x64
> 
> this define looks off - perhaps it should be named
> IXGBE_SFF_1GBASEBX_CAPABLE?

I had thought about it too, however BASEBX10 for SFF-8472 specification can also 
be used for non-Gigabit Ethernet transceivers, so to me it is a bit incorrect 
to call it 1GBASEBX (this is why I have to check the nominal bitrate).

By the way, thanks for the review!

Ernesto

