Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A3577D085
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 19:02:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B837261152;
	Tue, 15 Aug 2023 17:02:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B837261152
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692118932;
	bh=fUxMN8KuOwZfF2HBX/Y7o7gsFHIsLfjb06hIobpSCY8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FWLOILbJi+pdTTvQEe7elN7PRu4QoJ3dNoeNZuw/azApWYgHsuYfWUyVHKRZC00Qq
	 VfXdHcyLdPv2wzPlFwiBfllHPzs/3+ffKa5u36GE49O8MHootib0PncDrDlPLJTkK5
	 lcoI87DGiHwlVNQoD97kw5rdOgrjZsbajXwZNecdLLauq6XgbdDJ/iIo/YTj0C0ZVm
	 ocME/Yd/dGeusO5wfTUNYhdfQ6rX+u+krEtaVSSZxIsovCQ8tsP2pVMmmqUN9SxiPC
	 WnvrK8JS7n+9Pae4G+VNIqWs34dbYHev7wi7cgr8EW/XN+MlRcUu/extqtAfAmejPS
	 I3Glw5rHvYHZw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mxZIrn0CqVGt; Tue, 15 Aug 2023 17:02:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B42376114A;
	Tue, 15 Aug 2023 17:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B42376114A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CF3D1BF379
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 17:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E36540953
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 17:02:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E36540953
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rSyy4vmlt5Je for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 17:02:06 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF285408DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 17:02:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF285408DF
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0CEA961646;
 Tue, 15 Aug 2023 17:02:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDA68C433C7;
 Tue, 15 Aug 2023 17:02:03 +0000 (UTC)
Date: Tue, 15 Aug 2023 10:02:03 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20230815100203.4e45fc7e@kernel.org>
In-Reply-To: <ZNtm6v+UuDIex1+s@nanopsycho>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230814194528.00baec23@kernel.org>
 <43395307-9d11-7905-0eec-0a4c1b1fc62a@linux.dev>
 <ZNtm6v+UuDIex1+s@nanopsycho>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692118924;
 bh=r9KZfoAmpLHh60UciV5nylVVLkX7ks9J5Cw/wgBs6bw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ow3YXSqMksDmaueAVNUM5WBG5xKeQfFxfA2pH0oD3F3PvzxmMy6ICbHq6ZzgWRWGK
 aWiZcvJDavt+UHR9txOSRokZGJD9qnwxvM+4LGry273QbcF13RARMuqN/EpldDPYDz
 i0ZsYWxjZmeSzflU80014K/dHCmsJDX9fy9KMyTwcG/Vjl3cE75GCUZbpKO87T62yC
 3Bi7Za/j8N56fcVheaxGJPTdawjHf/fmoUf7FcSiHoSNE7yeJUf+tSLIC53h/zBXV4
 9qetQIWqiAAyj3tjag/Z1MIK3/yq837XwlBfjKN5VylEFFKiQduQPdj5489SdaCf8g
 k6H7+xF9YjAsQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ow3YXSqM
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 0/9] Create common DPLL
 configuration API
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-clk@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 15 Aug 2023 13:52:10 +0200 Jiri Pirko wrote:
> >> Feels like we're lacking tests here. Is there a common subset of
> >> stuff we can expect reasonable devices to support?
> >> Anything you used in development that can be turned into tests?  
> >
> >Well, we were playing with the tool ynl/cli.py and it's stated in
> >the cover letter. But needs proper hardware to run. I'm not sure
> >we can easily create emulation device to run tests.  
> 
> Well, something like "dpllsim", similar to netdevsim would be certainly
> possible, then you can use it to write selftests for the uapi testing.
> But why don't we do that as a follow-up patchset?

I was thinking about a test that can be run against real HW.
Something that a new vendor implementing DPLL can run and
validate that their implementation behaves as expected.
And something that distributors and stable kernels could
potentially use to validate the code still works.

We don't have any well established user space to make use of this 
new functionality, there's high risk that drivers will invent their
own ways of interpreting the API.

Perhaps something that Red Hat could help with? I'm guessing you'd 
be writing test to validate this for RHEL, anyway?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
