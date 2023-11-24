Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9337F7245
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 12:01:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78FE661502;
	Fri, 24 Nov 2023 11:01:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78FE661502
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700823670;
	bh=Mvze1YFcud1H+a3rERy7JkxAvgENsRp1NX0e7+4iUs4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r8ivycihMGtUUQAG67AdaSk7uYg1O95hQdeNNSPR9BvAngjWJ0FBv+Iscj0syaJUB
	 GfB9b/LAxakczSaYaTFMakMIGU5sv261iVBaZ/teIqeD0UTKPv3SoicDQqVbIan6m5
	 V8k2XK1bOAm4fmK6+ONd9YYiMi1Wfkcb2NhckbdqTFFYT9L6n/W54WoHpvRvryO4f9
	 Q8BSNSubtgyEmf/sOMjHznEQfWWD/mqlOOzp6IyqUFNCnI5z+EjDAwT2Gr6v9PIIHN
	 zLxthoCqtoGHubJYUGYJTBmbVRVmVlh1Sxp8e4AjxELvkBHdc3OedGx69lbRNT7ng1
	 X/BRof+1DySRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CsvqEErrinXV; Fri, 24 Nov 2023 11:01:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6964B614FF;
	Fri, 24 Nov 2023 11:01:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6964B614FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DD7B1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:01:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 31FBC41A13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:01:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31FBC41A13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lxAfG317LTmJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 11:01:03 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B1E941A21
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:01:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B1E941A21
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 7DB1AB8164A;
 Fri, 24 Nov 2023 11:01:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9086C433C7;
 Fri, 24 Nov 2023 11:00:59 +0000 (UTC)
Date: Fri, 24 Nov 2023 11:00:57 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20231124110057.GG50352@kernel.org>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-8-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231121211921.19834-8-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700823660;
 bh=2ci1UjH+nU/w+5yINTyYaGPvh7WQcxnpCviXZwMQHIM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iPZ4m1FzUoYigpCpPegE/Fwwcdy4qhyplp5aEpjVq1B4mluAENpIJ5+QbQppcbvYG
 QwCsiEwBXr9bOAAwV1sh/vBS9CXqqzrmGXBljfSr6QmavL82K8neu7JeHkv8o5OYJa
 WNgvOaB/jEUF8WKOFoLt5WPfoOq0VXv4Jz0DoULf4IhSxx1P/iSRcRgnTY5yvVAflX
 zEKN43hGvoMvIFeuYcyA3JD5xVfEpvMUp9Vsmi7uMdqocv/JJTdp4wztAwZs6D6uwL
 7DfaIZSK0sTAN1bz3I/j1jfOBwBbKiUR8VppVkw0wHji/njzqORJry/Vtak4CH/h3L
 R1lLzBFKHEomw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=iPZ4m1Fz
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 07/13] ice: fix
 pre-shifted bit usage
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 21, 2023 at 01:19:15PM -0800, Jesse Brandeburg wrote:
> While converting to FIELD_PREP() and FIELD_GET(), it was noticed that
> some of the RSS defines had *included* the shift in their definitions.
> This is completely outside of normal, such that a developer could easily
> make a mistake and shift at the usage site (like when using
> FIELD_PREP()).
> 
> Rename the defines and set them to the "pre-shifted values" so they
> match the template the driver normally uses for masks and the member
> bits of the mask, which also allows the driver to use FIELD_PREP
> correctly with these values. Use GENMASK() for this changed MASK value.
> 
> Do the same for the VLAN EMODE defines as well.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
