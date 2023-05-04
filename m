Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BB36F6311
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 May 2023 05:00:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 946B841884;
	Thu,  4 May 2023 02:59:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 946B841884
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683169199;
	bh=iyY7C/O4kgu9E1Mav1BUgBKIyDz2Ewcztr7jCKSUKW4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ktf8f26KbWZ5Y4UyD9SsXH1oXGHlTq4bVKKBOsQZZgvAGHp2sNLVQKjzJYNuv/Cc1
	 JOjGPF094RMq1iIj6cBFNQjdNw0ApOTCKiwPDwIp6LVxL9TNMoyFmxpeHh4MmNdBep
	 9YNoRETP/KvhW8jP66cL7Q8YJR1GZkuz8gqCruoM41A6i+PmPxk2A9fmioXMSIyyvn
	 TjZEabacrZf3VO5jaEwf9M/cS3YNn7BdwE8mXNF46F7IrmpG5G6N5tT/ToYsJEA5ka
	 kkN8fj/M6ebiRJwFaIXHGHJNTPJ1kfc/hhAd+OsLtj6hPLrbZAtz2hEpfVhjuN3rqk
	 eR3yFKy1tGLSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1kBQXqmqJC7B; Thu,  4 May 2023 02:59:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B1D040565;
	Thu,  4 May 2023 02:59:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B1D040565
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB4B41BF27C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 02:59:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F33140565
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 02:59:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F33140565
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fQzlS4OFsilm for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 02:59:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB41540363
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CB41540363
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 02:59:51 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B6EE862824;
 Thu,  4 May 2023 02:59:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C6E1C433EF;
 Thu,  4 May 2023 02:59:49 +0000 (UTC)
Date: Wed, 3 May 2023 19:59:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20230503195948.08e9ff1d@kernel.org>
In-Reply-To: <20230503082458.GH525452@unreal>
References: <20230503031541.27855-1-dinghui@sangfor.com.cn>
 <20230503031541.27855-3-dinghui@sangfor.com.cn>
 <20230503082458.GH525452@unreal>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1683169190;
 bh=GireKYj/mRtD4dWjKfNVWI5ll+YC+Kxs5r5H9H/h/a4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HCGp2kkaojdjEulWXbQiUtQrMpHvGDhwhhEh1miZU4quCS9ah082GljeMizCrXz1S
 cLbyQEc1h+TOufJSL5jf+jhuPCGsi1uHpJW+QJ3te0ol0/gVdY/ipFgUKvKbGkoFj3
 clhY2lPvEljWlKV+IOapxy59rZGPQvL12kyzk0LXsWWF5jxrylY0Kuu79MSpk2Vpr+
 cjzzGm0XsQna2X5Jsjm7flHWhl7NuTNUSXqAeWXi8+QajNh5tbwurOPvNAPPiODtC8
 eC7eY5GrLXUHPq+xBrTR7wi7pICQtAK2jXhLTXTLa8O4VBKg2bnl0wHmlQYp4RwgLQ
 WsZVGDKyRZpIA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=HCGp2kka
Subject: Re: [Intel-wired-lan] [PATCH net v4 2/2] iavf: Fix out-of-bounds
 when setting channels on remove
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
Cc: pengdonglin@sangfor.com.cn, keescook@chromium.org,
 grzegorzx.szczurek@intel.com, mitch.a.williams@intel.com,
 Ding Hui <dinghui@sangfor.com.cn>, jesse.brandeburg@intel.com,
 huangcun@sangfor.com.cn, linux-kernel@vger.kernel.org,
 gregory.v.rose@intel.com, edumazet@google.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com,
 simon.horman@corigine.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 3 May 2023 11:24:58 +0300 Leon Romanovsky wrote:
> > +		if (test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
> > +			return -EOPNOTSUPP;  
> 
> This makes no sense without locking as change to __IAVF_IN_REMOVE_TASK
> can happen any time.

+1, the changes look questionable to me as well.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
