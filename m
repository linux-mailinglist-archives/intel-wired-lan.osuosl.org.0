Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDF977CE20
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 16:32:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA5DA40C1E;
	Tue, 15 Aug 2023 14:32:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA5DA40C1E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692109965;
	bh=00cVlwF5fjZaDU7roBInYZcTahm9/O4YNWPzBk35uwI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IVnBLM4pXm9wCy34cKSzh+IkkIayqOqsgvL982vJCpoTudxW+eY4qClMMWvt7CqTU
	 NFQUiw86cLCVF3PNfLfMECJbmRRtnZNFKTwO0thJd2N9P+4mNSGE9sMcVCqG31Pbrn
	 ZPDG+xyo3lnbjIkdV1ILhJXQHaz9/Wmd5pbRkaBRJDTB5TVkOCkvLgPxWFqPTYLGHr
	 M9/z3e8IqjYEpugp9hXm0bvMvPlUqCFLB+7Oeu2UGlH3uM7fMMZr3VDjAKXMeGRdVy
	 9sZTu3kZs+aE+mMBA+1zVRm7o1uvX1+L7EsfepkNlwvT4AsTsjYKOr3gcXtHo7WNTz
	 UNY+uwDeT62BA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iwoe-fySsvXj; Tue, 15 Aug 2023 14:32:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86DE7400AC;
	Tue, 15 Aug 2023 14:32:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 86DE7400AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 853451BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 14:32:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5C82440948
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 14:32:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C82440948
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WM-GMtxoN3An for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 14:32:37 +0000 (UTC)
Received: from out-45.mta1.migadu.com (out-45.mta1.migadu.com [95.215.58.45])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D0FF400AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 14:32:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D0FF400AC
Message-ID: <5c5dfd21-9882-94b8-79f8-9d8c03df22c4@linux.dev>
Date: Tue, 15 Aug 2023 15:32:28 +0100
MIME-Version: 1.0
Content-Language: en-US
To: Jiri Pirko <jiri@resnulli.us>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230814194528.00baec23@kernel.org>
 <43395307-9d11-7905-0eec-0a4c1b1fc62a@linux.dev>
 <ZNtm6v+UuDIex1+s@nanopsycho>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <ZNtm6v+UuDIex1+s@nanopsycho>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1692109953;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qzSXyJkj1fcIfg4XzbZtfcYtwRNqAm+dyKqw3EUgwmE=;
 b=xiggilbwQ3DFN5RK8GgY6aFQvWwy/a+D6DC3D9+5yKbjKeSu6Gw7B4hNzM0DmKzamUPzxR
 RCfHnEUjrZkSm+XjIbYMWHWRWPu7B/9sio2eSWgqR9hHbwpCDAH/7pDkUCEUdtSJbtwcqa
 A+8u3Fci3GVpyuwE1NkMj3ew+Q7iJEk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=xiggilbw
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
Cc: Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-clk@vger.kernel.org,
 Milena Olech <milena.olech@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 15/08/2023 12:52, Jiri Pirko wrote:
> Tue, Aug 15, 2023 at 01:36:11PM CEST, vadim.fedorenko@linux.dev wrote:
>> On 15/08/2023 03:45, Jakub Kicinski wrote:
>>> On Fri, 11 Aug 2023 21:03:31 +0100 Vadim Fedorenko wrote:
>>>>    create mode 100644 Documentation/driver-api/dpll.rst
>>>>    create mode 100644 Documentation/netlink/specs/dpll.yaml
>>>>    create mode 100644 drivers/dpll/Kconfig
>>>>    create mode 100644 drivers/dpll/Makefile
>>>>    create mode 100644 drivers/dpll/dpll_core.c
>>>>    create mode 100644 drivers/dpll/dpll_core.h
>>>>    create mode 100644 drivers/dpll/dpll_netlink.c
>>>>    create mode 100644 drivers/dpll/dpll_netlink.h
>>>>    create mode 100644 drivers/dpll/dpll_nl.c
>>>>    create mode 100644 drivers/dpll/dpll_nl.h
>>>>    create mode 100644 drivers/net/ethernet/intel/ice/ice_dpll.c
>>>>    create mode 100644 drivers/net/ethernet/intel/ice/ice_dpll.h
>>>>    create mode 100644 drivers/net/ethernet/mellanox/mlx5/core/dpll.c
>>>>    create mode 100644 include/linux/dpll.h
>>>>    create mode 100644 include/uapi/linux/dpll.h
>>>
>>> Feels like we're lacking tests here. Is there a common subset of
>>> stuff we can expect reasonable devices to support?
>>> Anything you used in development that can be turned into tests?
>>
>> Well, we were playing with the tool ynl/cli.py and it's stated in
>> the cover letter. But needs proper hardware to run. I'm not sure
>> we can easily create emulation device to run tests.
> 
> Well, something like "dpllsim", similar to netdevsim would be certainly
> possible, then you can use it to write selftests for the uapi testing.
> But why don't we do that as a follow-up patchset?

Yeah, I agree, we can implement simulator, but as a follow-up work. 
Otherwise it might take a year to merge this set :)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
