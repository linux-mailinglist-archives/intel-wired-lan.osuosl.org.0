Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0380081DF80
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Dec 2023 10:36:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F342641605;
	Mon, 25 Dec 2023 09:36:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F342641605
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703496969;
	bh=twTBNkGX1jw3vyMcTQ/Pl+IJeOJmzwGWP1Z2BbJVsus=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yrapMFErHA9bl24zpyOauwcmIJ7WAPKF9QzPZQimYku3t487rdaLR0jBilzi4LxTQ
	 R3DwukRqyyRfEdsSlS4tZVdInidkHoPyEt12Yy+PWN8ivD+woQyNK1Mf+C83di6Hmp
	 1tNAUCyniXq7Y0z13wAaHOpDKYQjUCaF7Xx6gIXVbN2WU953c8SNlOuH8As/b6rBfE
	 fWGbwwuhuS+GSNz9OCOxWOwq56Xom0xyN24JYxaKy7TLBuU6y/7Xohfr9zoiqyurrX
	 lrAfe8W4gzuVdKE5eH8UIm/agj5eJr6MOpIAui0Xik5xZ4zKkgMpBVItDXvD0cVIF7
	 /mKhSzbtqd6SA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Aw8dIAbCGfOk; Mon, 25 Dec 2023 09:36:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4712415FB;
	Mon, 25 Dec 2023 09:36:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4712415FB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79FD91BF573
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 09:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4FA5D415FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 09:36:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FA5D415FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b1AYMYzk45dw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Dec 2023 09:36:01 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E2B8841521
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Dec 2023 09:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2B8841521
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 9CD7ACE0E7C;
 Mon, 25 Dec 2023 09:35:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83B9CC433C7;
 Mon, 25 Dec 2023 09:35:54 +0000 (UTC)
Date: Mon, 25 Dec 2023 09:35:51 +0000
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20231225093551.GD5962@kernel.org>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-3-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206010114.2259388-3-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1703496955;
 bh=LF/WJSgUBRPfQoLh6WGy2+fMbMkZEpoynqdokcSxuDw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=giTI23RuXkTzuAMTEF3YZIgPuEDBVmSXs6JbQHINdZryLJUkIfr12NOu673Qn+iuG
 rLQp4P4+rsDLme/KHJbJyd8lWoXgNUqxFZFx5bnvNoPNBcyt0eSxu0bNhp4rXsCEAY
 4e5yjxiEyIv55boUmb8ZZxVzIfTvN+IUX6060cFV+NFk9omncsw+yHZh81D8wUf6oc
 ELIWDksOP4CZRXWQEUFdI1Znm/wbXoa8tpLu2cNWhN14Mpj5FcpEg//zJ0TqYTEgg6
 sgmIkq+HBL3so3QlwBsXt5yjbgFWi9ls9pg/ElFST0BREjl81BASD/QkckiU/VAa/n
 C9B2DEyjaJTBA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=giTI23Ru
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 02/15] intel: add bit
 macro includes where needed
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
Cc: netdev@vger.kernel.org, marcin.szycik@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 aleksander.lobakin@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 05, 2023 at 05:01:01PM -0800, Jesse Brandeburg wrote:
> This series is introducing the use of FIELD_GET and FIELD_PREP which
> requires bitfield.h to be included. Fix all the includes in this one
> change, and rearrange includes into alphabetical order to ease
> readability and future maintenance.
> 
> virtchnl.h and it's usage was modified to have it's own includes as it
> should. This required including bits.h for virtchnl.h.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
