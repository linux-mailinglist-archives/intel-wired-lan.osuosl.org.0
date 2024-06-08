Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B58901195
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2024 14:59:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A66181F43;
	Sat,  8 Jun 2024 12:59:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ux7cJ9O_KMbr; Sat,  8 Jun 2024 12:59:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5A2981F3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717851568;
	bh=hBwMCPF/N41D48r/Lu1wUMpMhiOlgRS2BjR1vDnMA2o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=57eF/ZIlA5f84Fpy/xZc0m8UDm12Y+JTJ0VW5ff1Py6kvT/wxAE+Fem07VSeGlWEY
	 Fdd24vYKbNNWhrNOVKzNp2yFOq6m62xh14ed86/WoPfvMW9DBoVF0Se1gMNlGc73xk
	 yXBOHTGaP+suPaObZLatG3imXPLiaZ833vk+0h/9MgAjvLubcFKeXp3pDB9N6Ry2TH
	 cfZgMJgOnHf0VzplQANOeMOrZFAVbvhCAWOcOKEdAcOKlShOmspuzDpOcz7/ozXU6l
	 MNw1BzybDaYpgcjw1DkYkR9YVdqdTAIGdnkIq+wpbyeV9LzgkOK1DvhXyGxjMeI55z
	 YfScHiOcH7WMw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5A2981F3B;
	Sat,  8 Jun 2024 12:59:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5FE401BF20D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:59:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4BEDD40207
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:59:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4cAGaKmgWIiV for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jun 2024 12:59:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2B73B401EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B73B401EB
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B73B401EB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:59:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 46170CE1D29;
 Sat,  8 Jun 2024 12:59:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B865C2BD11;
 Sat,  8 Jun 2024 12:59:22 +0000 (UTC)
Date: Sat, 8 Jun 2024 13:59:20 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240608125920.GA27689@kernel.org>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-9-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604131400.13655-9-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717851563;
 bh=10knmIN+vc6J0ik2c8OvOO/lcoOvNsnUuSif0SnI0TI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rxjKpeXoGXc1H79J95KMGtOb7f48lbDc+ThjYEcs3Si4q2vc7FQjv4zoq8oMB8MlG
 O+270mGvY2VqpvxpUoSjgJ1TfQvHDx+UoRWC2hA/ReJxjFwc7lzzDJ7vxldaWyjQwi
 NsN8ZMKfuN1Uw0j9Qlh/L/4ibJQ3sb/BhE5yCDda7Okmbc/okGmMJBop/zcyc1CDmf
 E5AuyoxrBaVi2jxzdNSd+0YmZx1nLsQUJtbLgF7X6tFP4lJuwao4bdD7HaboAKCKMd
 vqLyQ6A+CU3xwPCDOgfO+f4PYGsPRyallotIQBddKrzmtFMRTMSaQmCURG81f9bbqx
 pkKrlK6uvXTUw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rxjKpeXo
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 08/12] iavf: periodically
 cache PHC time
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Wojciech Drewek <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 04, 2024 at 09:13:56AM -0400, Mateusz Polchlopek wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The Rx timestamps reported by hardware may only have 32 bits of storage
> for nanosecond time. These timestamps cannot be directly reported to the
> Linux stack, as it expects 64bits of time.
> 
> To handle this, the timestamps must be extended using an algorithm that
> calculates the corrected 64bit timestamp by comparison between the PHC
> time and the timestamp. This algorithm requires the PHC time to be
> captured within ~2 seconds of when the timestamp was captured.
> 
> Instead of trying to read the PHC time in the Rx hotpath, the algorithm
> relies on a cached value that is periodically updated.
> 
> Keep this cached time up to date by using the PTP .do_aux_work kthread
> function.
> 
> The iavf_ptp_do_aux_work will reschedule itself about twice a second,
> and will check whether or not the cached PTP time needs to be updated.
> If so, it issues a VIRTCHNL_OP_1588_PTP_GET_TIME to request the time
> from the PF. The jitter and latency involved with this command aren't
> important, because the cached time just needs to be kept up to date
> within about ~2 seconds.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

