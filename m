Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95257753E25
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jul 2023 16:54:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0425A60E43;
	Fri, 14 Jul 2023 14:54:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0425A60E43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689346498;
	bh=yKPTDyyi9JjTX2Qg/YiZoPDgfF3MWVCXWDRZ7Y7RHKk=;
	h=Date:From:To:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=CS60/LwWymGaHhGhppU8ioulXjOZXeAfQxz1TnF2vcra2fvsk9nqno29wGzOVv0/u
	 X0fOOy7zXGwjqhsOAT2B98CQxtVSkv2pf3sX/nAFWB1AAunrAQIugxCY0RpKxfS4Mx
	 kz6XQkLjZRO8HhI/GyiyoS5OlQe6iGqTArNInmlfFYfDVSPc8gJbtFXUfi2PeNy90c
	 o3WFZ9etBaTDaMbWdnYsJUx9iEQBcyNI04o8eC7jWnJJRMOQo05dyHirNqnfuXUWID
	 MGZqjhm0TqCzy2R2WREvMswShb9D36xd7O2q69B28M22BGGkRlVUAbhyK1hLOzhU+w
	 PevUFA1xlNNQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vyNXRVsHK6QK; Fri, 14 Jul 2023 14:54:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC28D60A97;
	Fri, 14 Jul 2023 14:54:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC28D60A97
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C7001BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 14:54:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6D1141C48
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 14:54:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6D1141C48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kRFgrSc7zfjy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jul 2023 14:54:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91D9941C26
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91D9941C26
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 14:54:50 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2C0946199A;
 Fri, 14 Jul 2023 14:54:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47F67C433C8;
 Fri, 14 Jul 2023 14:54:48 +0000 (UTC)
Date: Fri, 14 Jul 2023 09:54:45 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Message-ID: <20230714145445.GA354014@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230714050541.2765246-1-kai.heng.feng@canonical.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1689346488;
 bh=ZH/581wIsvRkjbT1Km2WPpK9yxOv+wJEG0gq+KRNxmI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=pcmyzOgVvkq/IxwsTWZTza8vFkLmG5W/a9dZ9FgjbnfWJ7S6yTx7gJZ3kI7vu1vLi
 Bqaqf5q6cz69MjQEi0UvzrSdIltmkWwyyYOOtRLZiCuxTl1agCBk0vN7OGtRVrYwLZ
 sJK5Ke3IikttOGmJomu3a9F1zmWL24NVy9WGCTwBjtsmssnEZ8BwJboKSHc4ucEWIe
 2AovQVoXJmCD/WKCP6T730m1rrOrto0Fhq0DidlFamqKZRvQfqDU2MSxpr/SQaQ91j
 /mruCsdztAW6pP1z9FUw2fvRt663SNxsGnCi6rUJsKeEZ5DvKcLL/WgcaK4gIXzEK1
 8zcDi3f1H3biA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pcmyzOgV
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Ignore AER reset when device
 is suspended
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 linux-pci@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, "Guilherme G . Piccoli" <gpiccoli@igalia.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, linux-hardening@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jul 14, 2023 at 01:05:41PM +0800, Kai-Heng Feng wrote:
> When a system that connects to a Thunderbolt dock equipped with I225,
> like HP Thunderbolt Dock G4, I225 stops working after S3 resume:
> ...

> The issue is that the PTM requests are sending before driver resumes the
> device. Since the issue can also be observed on Windows, it's quite
> likely a firmware/hardware limitation.

Does this mean we didn't disable PTM correctly on suspend?  Or is the
device defective and sending PTM requests even though PTM is disabled?

If the latter, I vote for a quirk that just disables PTM completely
for this device.

This check in .error_detected() looks out of place to me because
there's no connection between AER and PTM, there's no connection
between PTM and the device being enabled, and the connection between
the device being enabled and being fully resumed is a little tenuous.

If we must do it this way, maybe add a comment about *why* we're
checking pci_is_enabled().  Otherwise this will be copied to other
drivers that don't need it.

> So avoid resetting the device if it's not resumed. Once the device is
> fully resumed, the device can work normally.
> 
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=216850
> Reviewed-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> 
> ---
> v2:
>  - Fix typo.
>  - Mention the product name.
> 
>  drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 9f93f0f4f752..8c36bbe5e428 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7115,6 +7115,9 @@ static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
>  	struct net_device *netdev = pci_get_drvdata(pdev);
>  	struct igc_adapter *adapter = netdev_priv(netdev);
>  
> +	if (!pci_is_enabled(pdev))
> +		return 0;
> +
>  	netif_device_detach(netdev);
>  
>  	if (state == pci_channel_io_perm_failure)
> -- 
> 2.34.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
