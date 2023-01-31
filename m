Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3EB6823B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 06:18:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 67A9F400F3;
	Tue, 31 Jan 2023 05:18:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67A9F400F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675142283;
	bh=pFxw9+QM5+OzUHlM1YCiCuO82axlomLV0lb2xpct1Vo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7cU8A9uCpsX+ikTeMrhJwnlC436VB1dvyQAMAh4lOh5J62+haMt/GHOjl7bNcmjOC
	 C9vNhq0lr+9iDKviAyEW8oJeLE1Q/jxyKvE2Arrh/LiGKMgocXcEJmqg03Y4Suu+FN
	 khidDmTkiQv6weJHwCO8JKqhh79b03jEMj+TBi+eIspy6+JQs19edRVuIXmWEXlnfE
	 27ECkoHOoJlRWbCM9kVkOCnOorH+0m8JFxvgCAUG8WgYIOL6PzhAMo+Hs66gwWQ5tl
	 q2JP4F48AkK2PB+XOi+BJkGhgrlxJVE/X89yIkXv8goICkG4tVMKNzZkPzkaTOtipF
	 Fd9aEoiE4JRpQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JAW2uPKULys2; Tue, 31 Jan 2023 05:18:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 517ED400DC;
	Tue, 31 Jan 2023 05:18:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 517ED400DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27FF41BF38C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 05:17:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 05236400DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 05:17:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 05236400DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WRQO1JJhOCTE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 05:17:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 114B2400AF
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 114B2400AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 05:17:55 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 19712B819A4;
 Tue, 31 Jan 2023 05:17:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27574C433D2;
 Tue, 31 Jan 2023 05:17:52 +0000 (UTC)
Date: Tue, 31 Jan 2023 06:17:49 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Natalia Petrova <n.petrova@fintech.ru>
Message-ID: <Y9ikffXU/qV1DV7f@kroah.com>
References: <20230125141328.8479-1-n.petrova@fintech.ru>
 <20230130221106.19267-1-n.petrova@fintech.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230130221106.19267-1-n.petrova@fintech.ru>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1675142272;
 bh=r1QHAE5CMl8j0BmAlptuDNAWDYIcrrh/o2sPtM6Hjy0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R/mf3WwpaV5fsu3TWYLp1Q7l9wmQIvSUP24s1OjzHzw2swhBCMqHQ6DjW89eTTJW9
 Xz2sNGG2lXALXIIGf31/sza9eCol6tjosPjVaFJ9x0lGOrn4IqKUawpfNsOcdxfIuA
 0434uycuN89kzLeT1DOg05GMKNn9Yb8WHtc8uaUY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=R/mf3Wwp
Subject: Re: [Intel-wired-lan] [PATCH v2] i40e: Add checking for null for
 nlmsg_find_attr()
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
Cc: lvc-project@linuxtesting.org, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 31, 2023 at 01:11:06AM +0300, Natalia Petrova wrote:
> The result of nlmsg_find_attr() 'br_spec' is dereferenced in
> nla_for_each_nested(), but it can take null value in nla_find() function,
> which will result in an error.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Fixes: 51616018dd1b ("i40e: Add support for getlink, setlink ndo ops")
> Signed-off-by: Natalia Petrova <n.petrova@fintech.ru>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: The remark about the error code by Simon Horman <simon.horman@corigine.com> 
> was taken into account; return value -ENOENT was changed to -EINVAL.
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
