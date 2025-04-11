Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68289A8657E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 20:29:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A729760B2D;
	Fri, 11 Apr 2025 18:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TDvCYMaG86_X; Fri, 11 Apr 2025 18:29:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2246860D66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744396189;
	bh=1wyzknAldsGeE8nxA+Wi2EM/kB1AbzfAUCjC1bwvqzQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zlY5/clKP8XKnXPN8GTodVmJt7Iyb2W7D99/Qy9p5K0B/oZ1iFXkeaGW5ywGh2pQi
	 Hstj7k8incvflhoLRmC/FhMgAb875Y3hgArMeE94OsKrujYsz3jbG1aTfjxzzkcXk/
	 SfCVbW4b618DVDFK9dAwQnCrTILwj3HNG798YyqwbJyhzHY6/sfaqSAP2udtzqstrr
	 YQZjm3vSRtP0Nkagc6nzsEW4JxKLrSAkdlCaPUCp1e/2LRCv+IN6pgKs3HUvP3+VgN
	 Gw5EWGmAsz+bXP13sOo7OU+yMq4Hctfg4ODZAkP3sOchyOLHX/qNQXnH4NYVF+sLLc
	 rXrc8pVeo/UZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2246860D66;
	Fri, 11 Apr 2025 18:29:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 022A1138
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 18:29:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DD5D840284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 18:29:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yNFDQsvxqgDr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 18:29:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4F5B240851
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F5B240851
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F5B240851
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 18:29:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4FB1F614AD;
 Fri, 11 Apr 2025 18:29:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DFF1C4CEE2;
 Fri, 11 Apr 2025 18:29:42 +0000 (UTC)
Date: Fri, 11 Apr 2025 19:29:40 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20250411182940.GO395307@horms.kernel.org>
References: <20250410115225.59462-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250410115225.59462-1-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744396185;
 bh=CzoWDLggbQ35EU7dIhJdBlfGx2o0jRfrpK7rR1Z9fZY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kdz9gLQ08RPj3Ev2eETay9KKUOXvzU/POkFSrk+hBNhsrF8NVWFkca/PDU2u358Mu
 kRzOY5uZwDc6BzBqQketTIeae930n3LbBoW4aWvEDj3qIjshVGDixq/E1oaMu40D7s
 kTcJ2udErRjCndUWEFkEMbw/zwWOPyvHHOn2RGoRTdWT519ufqPpVjUUGkfVIFk8G5
 nXf/dei6wMGKBkQ3OzCGqz+Kdim6As/PvSmPaCQY89qzjNj0JG7Ka8xLOsoZNAvxW7
 z8rpPGBUF9YOpO7IU+myyjQ4BVz9mvJHWHpoA3DUnZqayvQx3KcrfZC36NOvi/bLqK
 t/4wADjdvafqA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kdz9gLQ0
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: protect shutdown from
 reset
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

On Thu, Apr 10, 2025 at 01:52:23PM +0200, Larysa Zaremba wrote:
> Before the referenced commit, the shutdown just called idpf_remove(),
> this way IDPF_REMOVE_IN_PROG was protecting us from the serv_task
> rescheduling reset. Without this flag set the shutdown process is
> vulnerable to HW reset or any other triggering conditions (such as
> default mailbox being destroyed).
> 
> When one of conditions checked in idpf_service_task becomes true,
> vc_event_task can be rescheduled during shutdown, this leads to accessing
> freed memory e.g. idpf_req_rel_vector_indexes() trying to read
> vport->q_vector_idxs. This in turn causes the system to become defunct
> during e.g. systemctl kexec.
> 
> Considering using IDPF_REMOVE_IN_PROG would lead to more heavy shutdown
> process, instead just cancel the serv_task before cancelling
> adapter->serv_task before cancelling adapter->vc_event_task to ensure that
> reset will not be scheduled while we are doing a shutdown.
> 
> Fixes: 4c9106f4906a ("idpf: fix adapter NULL pointer dereference on reboot")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

