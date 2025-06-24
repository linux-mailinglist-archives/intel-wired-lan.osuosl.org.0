Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C748AE6E8D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 20:25:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A63F360D69;
	Tue, 24 Jun 2025 18:24:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fNEXHfq9Qcwi; Tue, 24 Jun 2025 18:24:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FB2061364
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750789497;
	bh=pO5c56z/t3gKNv+VQXj4/uUsjjOXgK7D5pir9ckHkxk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yzE5eiVI1Zu/wq4FI79keSUg4RCmTLqrh/acDAyyyK3d0jtCV8i0nvulMw+qpCNHd
	 2Qx2MLH4Q2KaiQcjApQRwAL7+Iy+sCdVBOFJcw3UffB9KEwLsT70jekt4zIpE4k7B1
	 RR7YM/bqwwfdCzh7//Niuw5LLWZPngs/t3fHcvUud9BrHsMXCFhoCDYRT3EeQNqTFq
	 lrGxvimBvW0nsSGAtj33dqjGJT0t3CVQgncelug3a5ZKxQ4ixPn/OdSObGudLqoqO/
	 7yjO25SLkPureSOMC4LnXMhKeHdOpyG33wAPeB3HuLLHcvUtrrH5jlS+TaxbymgIfU
	 xWjJIQPOk325w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8FB2061364;
	Tue, 24 Jun 2025 18:24:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3C45D43F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 18:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22B4D40B09
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 18:24:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BBv6nWV0RGwc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 18:24:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 77D1040210
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77D1040210
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 77D1040210
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 18:24:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 10C1BA52063;
 Tue, 24 Jun 2025 18:24:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94AE8C4CEE3;
 Tue, 24 Jun 2025 18:24:52 +0000 (UTC)
Date: Tue, 24 Jun 2025 19:24:50 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Madhu Chittim <madhu.chittim@intel.com>
Message-ID: <20250624182450.GC1562@horms.kernel.org>
References: <20250620171548.959863-1-ahmed.zaki@intel.com>
 <20250621121346.GD71935@horms.kernel.org>
 <c4164071-60c8-4b06-a710-70d5fbef2b11@intel.com>
 <20250624094029.GA8266@horms.kernel.org>
 <4adc2963-a5f2-459c-9535-301e207f8cb2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4adc2963-a5f2-459c-9535-301e207f8cb2@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750789493;
 bh=qNzBolCW/0TvKofxzonjiIYCSzhbbAmy3dKIcNzAgTE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KomAcBErbOUZfvwqOJPLJQvI2j1QdeW93ZEl78I/KDTKwRbnzu51ZytpHdWs6GzNw
 4kaB+ox690ZSLCjV6D/CJy/qPNqIRdR+v+2SpxIgW54DbdFintkPZ1GFaUIkWbjxCt
 oUifIM1IDB0ZidfArMbIg2UnD2wUPvJUz3xKcp9IAWbPtmZCRr+v5XRokDuwcg6orC
 gzpGrbMvf9B+fqzBlehymS//4sHFKNwLZpejOzo4mqj9Ld14y+auqB7lyEWPP8b/hG
 st5LM5TRvve2ONH9BjKdx2mlcyTK+4rPjmi1vi6ZAWQApNnCLG/ldE1QZfiWRoHm9R
 iyvB7Nu70Bn8g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KomAcBEr
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: preserve coalescing
 settings across resets
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

On Tue, Jun 24, 2025 at 10:13:38AM -0600, Ahmed Zaki wrote:
> 
> 
> On 2025-06-24 3:40 a.m., Simon Horman wrote:
> > On Mon, Jun 23, 2025 at 09:48:02AM -0600, Ahmed Zaki wrote:
> > > 
> > > 
> > > On 2025-06-21 6:13 a.m., Simon Horman wrote:
> > > > On Fri, Jun 20, 2025 at 11:15:48AM -0600, Ahmed Zaki wrote:
> > > > > The IRQ coalescing config currently reside only inside struct
> > > > > idpf_q_vector. However, all idpf_q_vector structs are de-allocated and
> > > > > re-allocated during resets. This leads to user-set coalesce configuration
> > > > > to be lost.
> > > > > 
> > > > > Add new fields to struct idpf_vport_user_config_data to save the user
> > > > > settings and re-apply them after reset.
> > > > > 
> > > > > Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> > > > > Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> > > > 
> > > > Hi Ahmed,
> > > > 
> > > > I am wondering if this patch also preserves coalescing settings in the case
> > > > where.
> > > > 
> > > > 1. User sets coalescence for n queues
> > > > 2. The number of queues is reduced, say to m (where m < n)
> > > > 3. The user then increases the number of queues, say back to n
> > > > 
> > > > It seems to me that in this scenario it's reasonable to preserve
> > > > the settings for queues 0 to m, bit not queues m + 1 to n.
> > > 
> > > Hi Simon,
> > > 
> > > I just did a quick test and it seems new settings are preserved in the above
> > > scenario: all n queues have the new coalescing settings.
> > 
> > Hi Ahmed,
> > 
> > Thanks for looking into this.
> > 
> > > > But perhaps this point is orthogonal to this change.
> > > > I am unsure.
> > > > 
> > > 
> > > Agreed, but let me know if it is a showstopper.
> > 
> > If preserving the status of all n queues, rather than just the first m
> > queues, in the scenario described above is new behaviour added by this
> > patch then I would lean towards yes. Else no.
> > 
> > 
> 
> I don't believe we can call this new behavior. Actually, the napi IRQ
> affinity pushed to CORE few weeks ago behaves in the same manner; deleting
> queues and re-adding them restores the user-set IRQ affinity.

Right, in that case it's certainly not a showstopper.

Reviewed-by: Simon Horman <horms@kernel.org>

