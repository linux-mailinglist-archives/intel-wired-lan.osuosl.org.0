Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC097F7259
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 12:03:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E3AD6150E;
	Fri, 24 Nov 2023 11:03:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E3AD6150E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700823830;
	bh=RDN/Vb2i0U4Dy+nLRx92t7g16X6Gvw7yNL3vGwLTglw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VDkWV6S8ZBXlgIwCNdRleMKGAcHKCTBoZ7HzW4AY/T78ps3TitEdXPtFl6GL3N28f
	 5YjYbz7EcwVyyU3/F2c/dbCpLln5NtdTJVhrEw9humVNDGEbAWoeUQiykUs7nCtFEf
	 XPhcXgZ9/FvV5adVlH3ZPazv5aFQ7y5fLqssOrO5bH+FN+j7fB8QtX87I6unv8qcmy
	 AIrh8aLYEyHNo0RvC1RSRZOh/b9+7aLQAiopYr04qUxQZ2ppu27Dn6C98LDxJ4+Q6Z
	 vOxMVQ05I5U9LfTMrisknBVxif4jCtATD3WC7eoM6qFvmjJIWE2hrNdv3gAWyxet9C
	 Eg/xvjK5DhhPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tdug8dLM4Yxl; Fri, 24 Nov 2023 11:03:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD97061502;
	Fri, 24 Nov 2023 11:03:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD97061502
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A6F51BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:03:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F4EC821F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:03:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F4EC821F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dMHjDgRgHYwX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 11:03:42 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 71D09821EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:03:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71D09821EB
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 0B34CCE28E5;
 Fri, 24 Nov 2023 11:03:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBADEC433C8;
 Fri, 24 Nov 2023 11:03:37 +0000 (UTC)
Date: Fri, 24 Nov 2023 11:03:35 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20231124110335.GM50352@kernel.org>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-14-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231121211921.19834-14-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700823819;
 bh=mQnh9+CbaX7F9yvVd/BdQa/ypVpUL6I1gEjexTa91Hw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YbClAnKEMtvAztNhxmFQq3k67SAx1o0kdt3yPcvK/HRRx5V+ur4D7TAw17CpEMzaI
 at+423+KSrxELwUGkgm52qFF2cNEluupE5cup12enSgSEuTLXRdOiK3oYU6aTmzjPi
 tcmc04EdOo6sC59ErrHKtzgXzB0oEStC48SZzHKI/wlziY4Pq2X9vi8ikOXjptRtIv
 tqp8gFp2bNngI+Fl8mNSizJ91vCEFUlfx9p7Q3RlpVgXFPoUXW/gG/RDqN1nvIUx+B
 7jjuwJU9ju/Rkx9wKQ880CfZg9fRaaMlfPEaUlCYwBYX6CVkF2+MArtXe/0owwd7uF
 3GtLwxnxRqt9A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YbClAnKE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 13/13] ice: field get
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 21, 2023 at 01:19:21PM -0800, Jesse Brandeburg wrote:
> Refactor the ice driver to use FIELD_GET() for mask and shift reads,
> which reduces lines of code and adds clarity of intent.
> 
> This code was generated by the following coccinelle/spatch script and
> then manually repaired.
> 
> @get@
> constant shift,mask;
> type T;
> expression a;
> @@
> -(((T)(a) & mask) >> shift)
> +FIELD_GET(mask, a)
> 
> and applied via:
> spatch --sp-file field_prep.cocci --in-place --dir \
>  drivers/net/ethernet/intel/
> 
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
