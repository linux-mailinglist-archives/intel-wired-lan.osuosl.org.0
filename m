Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A9CB3FC92
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 12:34:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A13B61BA5;
	Tue,  2 Sep 2025 10:34:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A74x_KDNAKUS; Tue,  2 Sep 2025 10:34:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F22346175F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756809251;
	bh=B5dadqOPXnawLXbOXYYjUzwsybHxfQkh6+VqxS9pnBQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=T8NvWO11sDI+UF1OYXh5jCpig0VV9k1Tb1///03YxHp4nsHJGm34sqDFvgFibmCkR
	 x8s0N7GCQ/woeq0JHc2Iaqgxt1A5DTTxf10i/ckG2F++3DatK19F5dEe0hwnLSgFC/
	 /jKHCw6+1hcw37uIYtSn5ieuHZgfL43ZxqYlFcILDjHc8k6BowDkvCwfbYAoTsd8Vk
	 ULQKEWUWFKwN0iOcmweb7lTV1VMOMowD0F+Ty4zYBhoE2/SeVYItr1fMVNsYLyiPn9
	 mkKmSzvAwPhEzmd1Ad0H+ubd2DCy2s5vj8agbrFg7EcLsm6T4LEYGLTUWhzc92FjuF
	 oZwclWu/QgRuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F22346175F;
	Tue,  2 Sep 2025 10:34:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D9A76439
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 10:34:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C410660DA2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 10:34:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pCaEjPsXVJu9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 10:34:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::b3; helo=out-179.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BDF4C60BEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDF4C60BEC
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::b3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BDF4C60BEC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 10:34:07 +0000 (UTC)
Message-ID: <c7005c02-63dc-4316-905c-e02283e398c5@linux.dev>
Date: Tue, 2 Sep 2025 11:34:00 +0100
MIME-Version: 1.0
To: Brahmajit Das <listout@listout.xyz>
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com
References: <e13abc99-fb35-4bc4-b110-9ddfa8cdb442@linux.dev>
 <20250902072422.603237-1-listout@listout.xyz>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250902072422.603237-1-listout@listout.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1756809243;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=B5dadqOPXnawLXbOXYYjUzwsybHxfQkh6+VqxS9pnBQ=;
 b=TEhXgNd/20zf4/RnqZqmSxfPjz8bsRHnAEQXdruje2qZhpH25fL0rRpMc/fFHJYhqTyWIo
 9HJxvGQrJrOQxv+BkJlIUGpwCI09VVa5t/RgAIH1Uyon/zcxRe0zChuBIroTerhE6o2WZx
 OEB05JZua5lQdVYhOdImktPN5ljIBlU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=TEhXgNd/
Subject: Re: [Intel-wired-lan] [PATCH v2] net: intel: fm10k: Fix parameter
 idx set but not used
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

On 02/09/2025 08:24, Brahmajit Das wrote:
> Variable idx is set in the loop, but is never used resulting in dead
> code. Building with GCC 16, which enables
> -Werror=unused-but-set-parameter= by default results in build error.
> This patch removes the idx parameter, since all the callers of the
> fm10k_unbind_hw_stats_q as 0 as idx anyways.
> 
> Suggested-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Signed-off-by: Brahmajit Das <listout@listout.xyz>
> ---
> changes in v2:
> 	- Removed the idx parameter, since all callers of
> 	fm10k_unbind_hw_stats_q passes idx as 0 anyways.
Just a reminder that you shouldn't send another version of the patch
as a reply to the previous version. And you have to wait for at least
24h before sending next version to let other reviewers look at the code.
Current submission looks OK in patchwork, so no action is needed from
you right now.

Thanks,
Vadim
