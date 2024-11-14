Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 904659CF183
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 17:32:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C6036111F;
	Fri, 15 Nov 2024 16:32:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AXFj-C6vbkWY; Fri, 15 Nov 2024 16:32:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C369461119
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731688323;
	bh=iSCE/Qi+tv7NDRxH+x0UHfkFAYCL1dJiR18XFW4tY80=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=4tpX+NdNGuk/O76YwkecRmmtCFSFpmMDU9Cv3AZXvJ0wJ47OgbVtffoBQb2PA2Arc
	 yW89Gsp1dxNQ5kNrTB+yYirazMOL9aAlV02Fm9Ro0CVqhr3RSFFQ4em0g3EVDgnP3l
	 qnxYqsRjlONK+p+Xwg/WriG9YNBuSFE8ZkePAbfN3Q17bYzHCLb1jIKrv/S/PzHIZL
	 3eTcbimtKmj5tCNDLa1EGaU6y6f0c3SeA/yzxGDZ/rGuhYUbsOCywmAYwFdZvmoCr0
	 X4B7xsrecCRGsIZLlOJnZr6uJsIj46onItY1c+lDpzHL07z3S5w7z7BeNaXiKilVTF
	 3auAbznWmr+aQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C369461119;
	Fri, 15 Nov 2024 16:32:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AFC26968
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 00:07:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9DA3360678
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 00:07:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cZGGJxY4ARJy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 00:07:19 +0000 (UTC)
X-Greylist: delayed 601 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 15 Nov 2024 00:07:18 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E40E560683
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E40E560683
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=17.57.155.12;
 helo=qs51p00im-qukt01072301.me.com; envelope-from=ernesto@castellotti.net;
 receiver=<UNKNOWN> 
Received: from qs51p00im-qukt01072301.me.com (qs51p00im-qukt01072301.me.com
 [17.57.155.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E40E560683
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 00:07:18 +0000 (UTC)
Received: from MSI-Laptop.local (qs51p00im-dlb-asmtp-mailmevip.me.com
 [17.57.155.28])
 by qs51p00im-qukt01072301.me.com (Postfix) with ESMTPSA id 99FDD25401B4;
 Thu, 14 Nov 2024 23:57:12 +0000 (UTC)
Message-ID: <799753305484d74cb9d194347743ff986da071d5.camel@castellotti.net>
From: Erny <ernesto@castellotti.net>
To: Tore Amundsen <tore@amundsen.org>
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net, 
 edumazet@google.com, ernesto@castellotti.net,
 intel-wired-lan@lists.osuosl.org, 	kuba@kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 	pabeni@redhat.com,
 pmenzel@molgen.mpg.de, przemyslaw.kitszel@intel.com
Date: Fri, 15 Nov 2024 00:57:10 +0100
In-Reply-To: <20241114195047.533083-2-tore@amundsen.org>
References: <ec66b579-90b7-42cc-b4d4-f4c2e906aeb9@molgen.mpg.de>
 <20241114195047.533083-1-tore@amundsen.org>
 <20241114195047.533083-2-tore@amundsen.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1 
MIME-Version: 1.0
X-Proofpoint-GUID: Spi5FdVucACLcYERu8XdpffBqfSFfqS6
X-Proofpoint-ORIG-GUID: Spi5FdVucACLcYERu8XdpffBqfSFfqS6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-14_05,2024-11-14_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=876
 bulkscore=0 mlxscore=0
 phishscore=0 adultscore=0 spamscore=0 suspectscore=0 clxscore=1030
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2411140190
X-Mailman-Approved-At: Fri, 15 Nov 2024 16:32:02 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=castellotti.net; s=sig1; t=1731628636;
 bh=iSCE/Qi+tv7NDRxH+x0UHfkFAYCL1dJiR18XFW4tY80=;
 h=Message-ID:Subject:From:To:Date:Content-Type:MIME-Version:
 x-icloud-hme;
 b=ccDvCUP0SWQJCXe6CnHMGpX9Lipo3GhPS/7nfjEkeW8sLC2vvSeQ5zoA/pdiFGrBd
 MzX626s6TvubZk5CHJjE1slrOlDMa0Cm5aQ3QuXZ2JdPzuhX4W06Rh1Tx8JYcBKJht
 zFzKlZX8mMytx8ZlZHfcj9EzyYXF3uAoEuEbj7JHGO6VjtY4HBDUhAprjJmpYef/Lr
 xeoljcOU3SXxUEwBupEsM6BVHasVzamEoqinhYEaGs02rznrsh69NdAA9EmubHlDGb
 xFefMwOG6UOmCE/zzMsq+813l1Vtn3wZorBtB3PoJV8uWQS63SV/K8SveLxEV2suwz
 z8TWWL4QFpSxA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=castellotti.net
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=castellotti.net header.i=@castellotti.net
 header.a=rsa-sha256 header.s=sig1 header.b=ccDvCUP0
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] ixgbe: Correct BASE-BX10
 compliance code
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
Reply-To: 20241114195047.533083-2-tore@amundsen.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2024-11-14 at 19:50 +0000, Tore Amundsen wrote:
> The current value in the source code is 0x64, which appears to be a
> mix-up of hex and decimal values. A value of 0x64 (binary 01100100)
> incorrectly sets bit 2 (1000BASE-CX) and bit 5 (100BASE-FX) as well.
> ---
> =C2=A0drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> index 14aa2ca51f70..81179c60af4e 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
> @@ -40,7 +40,7 @@
> =C2=A0#define IXGBE_SFF_1GBASESX_CAPABLE		0x1
> =C2=A0#define IXGBE_SFF_1GBASELX_CAPABLE		0x2
> =C2=A0#define IXGBE_SFF_1GBASET_CAPABLE		0x8
> -#define IXGBE_SFF_BASEBX10_CAPABLE		0x64
> +#define IXGBE_SFF_BASEBX10_CAPABLE		0x40
> =C2=A0#define IXGBE_SFF_10GBASESR_CAPABLE		0x10
> =C2=A0#define IXGBE_SFF_10GBASELR_CAPABLE		0x20
> =C2=A0#define IXGBE_SFF_SOFT_RS_SELECT_MASK		0x8

LGMT.

Acked-by: Ernesto Castellotti <ernesto@castellotti.net>

Kind regards,

Ernesto


