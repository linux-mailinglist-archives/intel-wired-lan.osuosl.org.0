Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0E55FF0CF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Oct 2022 17:10:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 323D7422BB;
	Fri, 14 Oct 2022 15:10:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 323D7422BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665760222;
	bh=wKpHivgJ2KuH0U7w6CAbC5i/hWogO1Ec3afmeQixTns=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2wTrAAdMDbsPK7uFgJVIQUhHVJKMKsq738blJNm986HP11pSqbCMYRmamYnyLKQCF
	 o8MR2nfpz8bl1AmU7GYpUjMTaq1gEST1/lkvfNMY+RS4CFTH8lMFOyA5NCi0u8rGU2
	 L6hyKYwxq70wnjDGCPUAaImdnGuVLJx6a6kQ0bfV5WEFjLK4ovIZ4UTvzGBZW4IPGG
	 nPEjmMq57i4lVcGUDStpRXOOyC+ApaJDOEjVQ9+AMDE8dKDmpTyHMmSSdfA8beFLLQ
	 6Y6rqouLi80pki4i74e7L054x+0dGdzupR7LXJqvyTB0WEQNYcRFGmqfEKBf8idkze
	 K5z6V/S2fSVmw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YB8CzQXGBqh5; Fri, 14 Oct 2022 15:10:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC3F44228C;
	Fri, 14 Oct 2022 15:10:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC3F44228C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B39E21BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 15:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 896326FA97
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 15:10:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 896326FA97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NCi516NlYnoH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Oct 2022 15:10:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9E2A6FAAE
Received: from relay.hostedemail.com (smtprelay0017.hostedemail.com
 [216.40.44.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B9E2A6FAAE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Oct 2022 15:10:14 +0000 (UTC)
Received: from omf15.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay05.hostedemail.com (Postfix) with ESMTP id 9BD2F40EA8;
 Fri, 14 Oct 2022 15:10:09 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf15.hostedemail.com (Postfix) with ESMTPA id 7006D1B; 
 Fri, 14 Oct 2022 15:09:54 +0000 (UTC)
Message-ID: <a6d6e890c232775489daa9522c4f8dd9594b1656.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, yexingchen116@gmail.com, 
 anthony.l.nguyen@intel.com
Date: Fri, 14 Oct 2022 08:10:05 -0700
In-Reply-To: <2e38c0f1-1b6c-1825-12c1-5ad135865c0c@intel.com>
References: <20221011111638.324346-1-ye.xingchen@zte.com.cn>
 <2e38c0f1-1b6c-1825-12c1-5ad135865c0c@intel.com>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 7006D1B
X-Stat-Signature: dtypu86bn6c75nfysogpch33x7cawm5y
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX18Sa9ThNv6AzKDdzc7yh8rhUmyEb4/zKoc=
X-HE-Tag: 1665760194-585015
Subject: Re: [Intel-wired-lan] [PATCH linux-next] iavf: Replace __FUNCTION__
 with __func__
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, ye xingchen <ye.xingchen@zte.com.cn>,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2022-10-11 at 14:46 -0700, Jesse Brandeburg wrote:
> On 10/11/2022 4:16 AM, yexingchen116@gmail.com wrote:
> > __FUNCTION__ exists only for backwards compatibility reasons with old
> > gcc versions. Replace it with __func__.
[]
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
[]
> > @@ -4820,7 +4820,7 @@ static void iavf_shutdown(struct pci_dev *pdev)
> >   		iavf_close(netdev);
> >   
> >   	if (iavf_lock_timeout(&adapter->crit_lock, 5000))
> > -		dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n", __FUNCTION__);
> > +		dev_warn(&adapter->pdev->dev, "failed to acquire crit_lock in %s\n", __func__);

Trivia: I suggest

		dev_warn(&adapter->pdev->dev, "%s: failed to acquire crit_lock\n", __func__);

As almost all printed uses of __func__ use a form like

	<printk_variant>("%s: message\n", __func__);

not

	<printk_variant>("message in %s\n", __func__);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
