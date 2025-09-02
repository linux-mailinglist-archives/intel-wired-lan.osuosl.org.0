Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3DDB3F6CE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 09:41:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BB01413FD;
	Tue,  2 Sep 2025 07:41:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IejvsPLRWmOT; Tue,  2 Sep 2025 07:41:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA14841492
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756798903;
	bh=IeU3paiQ9HhrqVYRKq8jOEDqZ9NfHngwUbp9m30YdWo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u7QY4l0QDdwhw3QFuE5B/jjrhvlJhzslxWQTnIdzrmgySEYLAmOL3BnC4XqJeWEPZ
	 K3wZADnBpbW43M5NNQ59xqkDdDx3kJ8Gh6OhEE/hB3YG5Tj4n22td0LanruoutbhE4
	 E1vVhQ3cyUymNmxAUch4KtYNubCjPUFa9MWABUU+urnkyEc0IonMTPSVlHd0BUvjAX
	 usZ6yo6rRHIZZ0K7+MTBD5a+QtBtYfmb6LBE8dgmPpWp9V9G46MeLwboP+OWl3i47L
	 EN3LnpXEp+uMrYRmACBVXU0Bdy+n+1dsrCVTQakDym10SjebuidT2UZkgUkWG5MODb
	 UuxxmamVpo8lA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA14841492;
	Tue,  2 Sep 2025 07:41:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 24C1DD2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 07:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A9488451C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 07:41:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C31nm6N5nXCO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 07:41:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.178;
 helo=out-178.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 418E28451B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 418E28451B
Received: from out-178.mta1.migadu.com (out-178.mta1.migadu.com
 [95.215.58.178])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 418E28451B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 07:41:40 +0000 (UTC)
Message-ID: <195a39b6-e4e6-48b0-bb47-3c86d8be20fa@linux.dev>
Date: Tue, 2 Sep 2025 08:41:23 +0100
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
 d=linux.dev; s=key1; t=1756798897;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IeU3paiQ9HhrqVYRKq8jOEDqZ9NfHngwUbp9m30YdWo=;
 b=q3UoKuHI6ukCKweGSo4WX/fL2NwxsGF2knvkeWskJUIHacuCDJL7uQQJOXeRMc4BHADlMz
 tSTTwdJ3r0MkXZSzgcpihM1CVtctB4FKpu83Jxg0yqxZ76owrtESOeeGdeB4sbeXMeRkCp
 99jB3zagFkLf9Gl+8CevvDdXfA724iU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=q3UoKuHI
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

Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
